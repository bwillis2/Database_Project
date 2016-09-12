#!/usr/bin/python

import MySQLdb
import re
import os

# Method that will execute and insert all of the quotes from the file, parse and insert them into the database
def quote(file, cursor, db):

	print "Attempting to insert quotes"


	cursor.execute("drop table if exists Quotes;")

	# Creates the table that is needed to insert into the quote table
	cursor.execute("create table Quotes(Q_ID int(5) primary key auto_increment not null, Quote varchar(2100) not null, Quotee varchar(750) not null);")

	sql = """insert into Quotes values(%d, '%s', '%s');"""

	# This is the regex that mark the beginning of the person being quoted
	quoteReg = re.compile("^(%\\\%)")	# Weird looking regex but due to what I did earlier this is the one needed
	newFortune = re.compile("^(%)$")
	quote = None
	quotee = None
	# maxQ = 0
	# maxQt = 0

	# This is the count that is needed to insert for id number of each quote
	count = 1

	for line in file.readlines():
		# If the line matches the new qoute regex
		if newFortune.match(line) and (not quoteReg.match(line)):
			if quote != None and quotee != None:
				# Insert into mysql
				try:
					cursor.execute("""insert into Quotes (Quote, Quotee) select * from (select '%s', '%s') as tmp where not exists(select * from Quotes where Quote = '%s' and Quotee = '%s');""" % (quote.rstrip().lstrip(), quotee.rstrip().lstrip(),quote.rstrip().lstrip(), quotee.rstrip().lstrip()))
					db.commit()
					count += 1
				except MySQLdb.Error as error:
					db.rollback()
					print "Failed: insert into Quotes (Quote, Quotee) select * from (select '%s', '%s') as tmp where not exists(select * from Quotes where Quote = '%s' and Quotee = '%s');" % (quote.rstrip().lstrip(), quotee.rstrip().lstrip(),quote.rstrip().lstrip(), quotee.rstrip().lstrip())
					print "\n", error,"\n"
				"""
				The small section of code found here is the way I found the maximum that I needed for both the quote and quotee, though right now it is commented out

				maxQ = max(maxQ, len(quote))
				print maxQ
				maxQt = max(maxQt, len(quotee))
				print maxQt
				"""
				

				# Reset of quote and quotee
				quote = None
				quotee = None
			# If there is no quote ready do nothing

		# If the quote regex has been found in this line it is a quotee, end of quote
		elif quoteReg.match(line):
			# Finds the position where the quotee begins, cut out the rest, using a slice in the line after
			position = line.find("-- ")
			quotee = line[position+3:].replace("'", r"\'")

		# If the current line does not have either of the regexes
		else:
			# print "reached final condition"
			if quote == None and quotee == None:
				quote = line.replace("'", r"\'")
			# If quotee hasn't been written to yet then it is currently in the middle of a quote
			elif quotee == None:
				quote = quote + line.replace("'", r"\'")
			# If quotee has been written to then there is another line for the quotee, and it strips all leading space
			elif line != "":
				quotee = quotee + line.lstrip().replace("'", r"\'")

	print "Finished inserting for Quotes."


# Method that will taked the parsed questions and answers from the file, and insert them into the database
def qA(file, cursor, db):

	print "Attempting to insert question and answers"

	count = 1

	# This is for both questions and answers together, going to be the longest
	fortune = None
	# This one is storing all of the questions that will appear
	questions = None
	# This is going to #tore all of the answers
	answers = None
	# Subject, because some of them have what the questions and answers are about
	subject  = None

	# Used to find the max of each item's length, though now they are commented out
	# f = 0
	# q = 0
	# a = 0
	# s = 0

	# Regexes needed to identify teh questions and answers straight from parser.py
	qReg = re.compile("^(Q: )|^(Q. )")
	aReg = re.compile("^(A: )|^(A. )")
	sReg = re.compile("(.+:$)")
	newFortune = re.compile("^(%)$")

	cursor.execute("drop table if exists Questions_And_Answers;")

	# This command creates the table that this function inserts into
	cursor.execute("create table Questions_And_Answers(QA_ID int(5) primary key auto_increment not null, Question_And_Answer varchar(450) not null, Subject varchar(75), Question varchar(200) not null, Answer varchar(200) not null);")
	
	for line in file.readlines():
		# This is the start of every fortune, when it starts as None
		if fortune == None and line != "" and not newFortune.match(line):
			fortune = line.replace("'", r"\'")
			# Since some have a subject title and it would only be at the beinning it triggers as the same time as the first fortune line
			if questions == None and answers == None and sReg.match(line):
				subject = line.replace("'", r"\'")
		elif line != "\n" and not newFortune.match(line):
			fortune = fortune + line.replace("'", r"\'")
		else:
			# Do nothing if the line really contains nothing
			pass
		# If the line for matches the new fortune to begin
		if newFortune.match(line):
			if fortune != None and questions != None and answers != None:
				# Insert into mysql
				try:
					if subject !=None:
						cursor.execute("""insert into Questions_And_Answers (Question_And_Answer, Subject, Question, Answer) select * from(select '%s','%s','%s','%s') as tmp where not exists(select * from Questions_And_Answers where Question_And_Answer = '%s' and Subject = '%s');""" % (fortune.rstrip().lstrip(), subject.rstrip().lstrip(), questions.rstrip().lstrip(), answers.rstrip().lstrip(),fortune.rstrip().lstrip(), subject.rstrip().lstrip()))
					else:
						cursor.execute("""insert into Questions_And_Answers (Question_And_Answer, Question, Answer) select * from(select '%s','%s','%s') as tmp where not exists(select * from Questions_And_Answers where Question_And_Answer = '%s');""" % (fortune.rstrip().lstrip(), questions.rstrip().lstrip(), answers.rstrip().lstrip(),fortune.rstrip().lstrip()))
					db.commit()
					count += 1
				except MySQLdb.Error as error:
					print """Failed: insert into Questions_And_Answers (Question_And_Answer, Subject, Question, Answer) select * from(select '%s','%s','%s','%s') as tmp where not exists (select * from Questions_And_Answers where Question_And_Answer = '%s' and Subject = '%s');""" % (fortune.rstrip().lstrip(), subject.rstrip().lstrip(), questions.rstrip().lstrip(), answers.rstrip().lstrip(),fortune.rstrip().lstrip(), subject.rstrip().lstrip())
					print "\n", error,"\n"
					db.rollback()
				"""
				The following commented out code was how I could determin what would be a suitable maximumx for each field when creating the table
				results for each towards the end were based of the first sets of fortunes, and do not include any created by an admin

				f = max(f, len(fortune))
				q = max(q, len(questions))
				a = max(a, len(answers))
				s = max(s, len(subject))
				print f				# 403
				print q				# 173
				print a				# 158
				print s				# 41
				"""

				fortune = None
				questions = None
				answers = None
				subject = None

		# If the line matches the question reg
		elif qReg.match(line):
			if questions == None:
				questions = line.replace("'", r"\'")
			else:
				questions = questions + line.replace("'", r"\'")

		# If the line matches the answer reg
		elif aReg.match(line):
			if answers == None:
				answers = line.replace("'", r"\'")
			else:
				answers = answers + line.replace("'", r"\'")

	print "Finished inserting for QA."


# This method will take all of the other fortunes that were parsed and insert them into the database
def others(file, cursor, db):

	print "Attempting to write to Fortune"

	fortune = None

	count = 1

	cursor.execute("drop table if exists Fortunes;")

	# This command creates the table that this function inserts into
	cursor.execute("create table Fortunes(F_ID int(5) primary key auto_increment not null, Fortune varchar(2000) not null);")

	# Only need one regex in this other category
	newFortune = re.compile("^(%)$")

	for line in file.readlines():
		if newFortune.match(line):
			# Insert into database
			try:
				cursor.execute("""insert into Fortunes (Fortune) select * from(select '%s') as tmp where not exists(select * from Fortunes where Fortune='%s');""" % ((fortune[:len(fortune)-2]).rstrip().lstrip(),(fortune[:len(fortune)-2]).rstrip().lstrip()))
				db.commit()
			except MySQLdb.Error as error:
				db.rollback()
				print """Failed: insert into Fortunes (Fortune) select * from(select '%s') as tmp where not exists(select * from Fortunes where Fortune='%s');""" % ((fortune[:len(fortune)-2]).rstrip().lstrip(),(fortune[:len(fortune)-2]).rstrip().lstrip())
				print "\n", error,"\n"
			count += 1
			fortune = None
		elif fortune == None:
			fortune = line.replace("'", r"\'")
		else:
			fortune = fortune + line.replace("'", r"\'")

	print "Finished inserting for Fortunes"


# This method will mostly just carry out checking to see if the files exist, opening the files, giving them to
# their respective needed method and the connection that they will be using to mysql
def main():
	# This is the connection to the database using where it is being access, the user, password(will be censored by the time I give it to you Dr. Neel), and the database to access
	db = MySQLdb.connect("localhost", "root", "Achilles154Everlong_10122", "Fortunes")
	
	# Cursor for a terminal for interacting with a database, will be passed along as an object to other methods
	cursor = db.cursor()

	fileStart = '/home/neo154/School/Spring16/Databases/Project/Fortune/FortunesFiles/Parsed/'
	quotes = file(fileStart+'Quote.txt', 'r')
	qa = file(fileStart+'QA.txt', 'r')
	fortune = file(fileStart+'Fortune.txt', 'r')


	quote(quotes, cursor, db)
	qA(qa, cursor, db)
	others(fortune, cursor, db)

	db.close()
	quotes.close()
	qa.close()
	fortune.close()




main()
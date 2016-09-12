#!/usr/bin/python

# Used for operating system in python
import os
# Used for regexes
import re

"""
The last version had some bad parsing, because the freaking fortune files don't have anything of what I would call a set format so I had to
hand make adjustments to the files that I had parsed. Reason why I took the files that were already parsed is because they had the strings
that got passed my last regex, I made some adjustments to the regexes also to make them a lot more accurate
"""

# This method will be used to handle each and everyfile that it is given
def fileHandler():
	try:
		location = '/home/neo154/School/Spring16/Databases/Project/Fortune/FortunesFiles/Parsed/'
		fileName = location+'lumpedTogether.txt'
		# The file it will attempt to open
		fortunes = None
		if(os.path.exists(fileName)):
			fortunes = file(fileName, 'r')
		else:
			print "Something went very wrong with: ", fileName
			return 

		# Instantiation of each file that it will either create or open and append
		QA = file(location+"QA.txt", 'a')
		Quote = file(location+"Quote.txt", 'a')
		Fortune = file(location+"Fortune.txt", 'a')
		print(os.path.exists(fileName))
		print "Attempting to read from: ", fileName
		print(os.path.exists(location))
		print "Attempting to write to: ", location

		currentFort = None
		# Will be used to identify which file it will go into
		fType = None

		nextLine = re.compile("%")
		# Regex for the quotes
		quoteReg = re.compile("^((\s+)-- ((\"?)|([0-9]?)|(\'?)|(/?)|[a-zA-Z]+))")
		# These two regexes when both are confirmed are going to mean that it
		# is a question and answer
		qReg = re.compile("(^(Q:\s+)|^(Q\.\s+))")
		aReg = re.compile("(^(A:\s+)|^(A\.\s+))")
		# Reading file line by line
		for line in fortunes.readlines():
			if nextLine.match(line):
				if currentFort != None:
					# If the fortune is finished and is marked as a quote
					if fType == 3:
						currentFort = currentFort + "\n%\n"
						Quote.write(currentFort)
					# If the fortune is finished and is marked a Question and Answer
					elif fType == 2:
						currentFort = currentFort + "\n%\n"
						QA.write(currentFort)
					else:
						currentFort = currentFort + "\n%\n"
						Fortune.write(currentFort)

					# Reset currentFort and fType for next run
					currentFort = None
					fType = None
			# Start of a new fortune if currentFort is None and line isn't %
			if currentFort == None and (not nextLine.match(line)):
				currentFort = line
			# In case it is a quote and has -- symbols
			elif quoteReg.match(line):
				currentFort = currentFort + "\n%\%" + line +"\n"
				fType = 3
			# If it contains a Q: it sets fType ready to be markes as a Q/A
			elif qReg.match(line) and fType != 2:
				currentFort = currentFort + line + "\n"
				fType = 1
			# If it already previously contained Q: and also now A: it is a Q/A
			elif aReg.match(line) and fType == 1:
				currentFort = currentFort + line + "\n"
				fType = 2
			elif currentFort != None:
				currentFort = currentFort + line

		if currentFort != None and fType!=None:
			if fType == 3:
				currentFort = currentFort + "\n%\n"
				Quote.write(currentFort)
			# If the fortune is finished and is marked a Question and Answer
			elif fType == 2:
				currentFort = currentFort + "\n%\n"
				QA.write(currentFort)
			else:
				currentFort = currentFort + "\n%\n"
				Fortune.write(currentFort)

	except OSError:
		print "Something went wrong."
	print "Completed reading and writing file from: ", fileName

fileHandler()



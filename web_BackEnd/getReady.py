import MySQLdb
import random
import re

admin = "root"

adminPass = "Achilles154Everlong_10122"

excuses = []

def createUser(usr,password):
	db = MySQLdb.connect("localhost", admin, adminPass, "Fortunes")
	cursor = db.cursor()
	try:
		cursor.execute("grant select on Fortunes.* to '%s'@'localhost' identified by '%s';"%(usr,password))
		return None
	except:
		return None

def genUserList():
	users = []
	db = MySQLdb.connect("localhost", admin, adminPass, "Fortunes")
	cursor = db.cursor()
	cursor.execute("select User from mysql.user;")
	data = cursor.fetchall()
	for row in data:
		users.append(row[0])
	return users


# Gets a list of all of the 
def makeMyMillenium():
	global excuses
	return excuses[random.randint(0, len(excuses)-1)]

# Will be called before makeMyMillenium and the setup of the server to make a list for all bofh excuses
def createList():
	global excuses
	excuseFile = open('bofh-excuses', 'r')
	nextExcuse = re.compile("%")
	excuse = ""

	for line in excuseFile:
		if nextExcuse.match(line):
			if excuse != "":
				# Appends an excuse with whitespace stripped on the left and right
				excuses.append(excuse.rstrip().lstrip())
				excuse = ""
		else:
			if excuse == "":
				excuse = line
			else:
				excuse = excuse + line



# For testing purposes and to see all users that exist in the database so far
if __name__ == "__main__":
	print(genUserList())
	createList()
	print(excuses)
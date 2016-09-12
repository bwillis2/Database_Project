import MySQLdb

class User:
	def __init__(self, cursor, userName):
		self.cursor = cursor
		self.userName = userName
		self.queryDictionary = {}
		self.lastQueries = []

	def getCursor(self):
		return self.cursor

	def addToDictionary(self, query):
		if query in self.queryDictionary:
			entry = self.queryDictionary[query]
			self.queryDictionary[query] = entry+1
		else:
			self.queryDictionary.update({query: 1})
		if query not in self.lastQueries:
			if len(self.lastQueries) > 4:
				self.lastQueries.pop(0)
			self.lastQueries.append(query)

	def getLastQueries(self):
		return self.lastQueries

	def getQueryDictionary(self):
		return self.queryDictionary

class UserDictionary:
	def __init__(self):
		self.usrObject = {}

	def addEntry(self, user, password):
		try:
			db = MySQLdb.connect("localhost", user, password, "Fortunes")
			usrObjector = db.cursor()
			newUser = User(usrObjector, user)
			self.usrObject.update({user:newUser})
		except:
			return "Something went wrong with adding your connection"

	def getUser(self, user):
		return self.usrObject[user]

	def deleteEntry(self, user):
		del self.usrObject[user]

	def getUserLastQueries(self, user):
		return self.usrObject[user].getLastQueries()

	def getUserDictionaryQueries(self, user):
		return self.usrObject[user].getQueryDictionary()

def getQueryResult(user, dic, query):
	currentUser = dic.getUser(user)
	cursor = currentUser.getCursor()
	try:
		cursor.execute(query)
		currentUser.addToDictionary(query)
		return cursor.fetchall()
	except MySQLdb.Error as error:
		# Debugging purposes
		print(error)
		return None

# Testing purposes to see if the connections  and programs work as they are
if __name__ == "__main__":
	test1 = "anotherTest4"
	dic = UserDictionary()
	dic.addEntry(test1, "anotherTest4^")
	getQueryResult(test1, dic, "select * from Fortunes where F_ID=1;")
	print(dic.getUserLastQueries(test1))
	print(dic.getUserDictionaryQueries(test1))
	getQueryResult(test1, dic, "select * from Fortunes where F_ID=1;")
	getQueryResult(test1, dic, "select * from Fortunes where F_ID=1;")
	getQueryResult(test1, dic, "select * from Fortunes where F_ID=2;")
	getQueryResult(test1, dic, "select * from Fortunes where F_ID=2;")
	print(dic.getUserLastQueries(test1))
	print(dic.getUserDictionaryQueries(test1))

import MySQLdb

class User:
	def __init__(self, cursor, userName):
		self.cursor = cursor
		self.userName = userName
		self.queryCount = []
		self.lastQueries = []

	def getCursor(self):
		return self.cursor

	def addToDictionary(self, query):
		if query in dict(self.queryCount):
			tmpDic = dict(self.queryCount)
			entry = tmpDic[query]
			index = self.queryCount.index((query, entry))
			self.queryCount.pop(index)
			newEntry = (query, entry+1)
			self.queryCount.insert(index, (query, entry+1))
		else:
			entry = (query, 1)
			self.queryCount.append(entry)
		if query not in self.lastQueries:
			if len(self.lastQueries) > 4:
				self.lastQueries.pop(0)
			self.lastQueries.append(query)

	def getLastQueries(self):
		return self.lastQueries

	def getQueryDictionary(self):
		return self.queryCount

class UserDictionary:
	def __init__(self):
		self.usrObject = {}

	def addEntry(self, user, password):
		try:
			db = MySQLdb.connect("localhost", user, password, "Fortunes")
			usrCursor = db.cursor()
			newUser = User(usrCursor, user)
			self.usrObject.update({user:newUser})
			return True
		except MySQLdb.exception as error:
			print(error)
			return False

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
	print(dic.addEntry(test1, "anotherTest4^"))
	getQueryResult(test1, dic, "select * from Fortunes where F_ID=1;")
	print(dic.getUserLastQueries(test1))
	print(dic.getUserDictionaryQueries(test1))
	getQueryResult(test1, dic, "select * from Fortunes where F_ID=1;")
	getQueryResult(test1, dic, "select * from Fortunes where F_ID=1;")
	getQueryResult(test1, dic, "select * from Fortunes where F_ID=2;")
	getQueryResult(test1, dic, "select * from Fortunes where F_ID=2;")
	print(dic.getUserLastQueries(test1))
	print(dic.getUserDictionaryQueries(test1))
	getQueryResult(test1, dic, "select * from Fortunes where F_ID=3;")
	getQueryResult(test1, dic, "select * from Fortunes where F_ID=3;")
	getQueryResult(test1, dic, "select * from Fortunes where F_ID=4;")
	getQueryResult(test1, dic, "select * from Fortunes where F_ID=4;")
	getQueryResult(test1, dic, "select * from Fortunes where F_ID=1;")
	getQueryResult(test1, dic, "select * from Fortunes where F_ID=1;")
	getQueryResult(test1, dic, "select * from Fortunes where F_ID=2;")
	getQueryResult(test1, dic, "select * from Fortunes where F_ID=2;")
	getQueryResult(test1, dic, "select * from Fortunes where F_ID=1;")
	getQueryResult(test1, dic, "select * from Fortunes where F_ID=1;")
	getQueryResult(test1, dic, "select * from Fortunes where F_ID=2;")
	getQueryResult(test1, dic, "select * from Fortunes where F_ID=2;")
	getQueryResult(test1, dic, "select * from Fortunes where F_ID=1;")
	print(dic.getUserLastQueries(test1))
	print(dic.getUserDictionaryQueries(test1))
	getQueryResult(test1, dic, "select * from Fortunes where F_ID=5;")
	print(dic.getUserLastQueries(test1))
	print(dic.getUserDictionaryQueries(test1))
	getQueryResult(test1, dic, "select * from Fortunes where F_ID=6;")
	print(dic.getUserLastQueries(test1))
	print(dic.getUserDictionaryQueries(test1))
	anotherTesting = getQueryResult(test1, dic, "select * from Fortunes where F_ID=7;")
	print(dic.getUserLastQueries(test1))
	print(dic.getUserDictionaryQueries(test1))
	
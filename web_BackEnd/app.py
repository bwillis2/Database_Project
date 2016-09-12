from flask import Flask, render_template, request, json, url_for, redirect, session
from werkzeug import generate_password_hash, check_password_hash
from santize import cleanUser, cleanPass, dirtyQuery
from mysqlHelper import UserDictionary, getQueryResult
from getReady import createUser, genUserList, createList, makeMyMillenium

app = Flask(__name__)
app.secret_key = 'UltraSecretLOLZ'

# List of users that are on my current database
users = genUserList()

# UserDictionary object that takes users and make sure that users have their cursor objects for queries
UserDic = UserDictionary()

# Creates list of bofh excuses used for bad queries
createList()

@app.route("/")
def main():
	return render_template("index.html")

@app.route("/signIn", methods=['POST','GET'])
def signIn():
	if request.method == 'POST':
		usrCon = None
		# Password and username are checked for any unwanted characters and specific length
		usr = request.form['usrAlias']
		passw = request.form['usrPass']
		if usr == "" or passw == "":
			error = "Both fields are required"
		elif (not cleanUser(usr) or not cleanPass(passw)):
			error = """Username must be 6 - 20 characters long and can't contain any of the following symbols: ?<!@*()/\<>,..$^&-=_+;
			\n* Passwords must be 6 - 20 characters long with at least one number, one lowercase letter, one uppercase letter with at least one of the following symbols: !@#$%^&*_+-="""
		elif usr not in users:
			error = "The username and password combination doesn't exist"
		elif passw != "":
			try:
				valid = UserDic.addEntry(usr,passw)
				if valid:
					session['logged_in'] = True
					return redirect(url_for('userQuery',userName=usr))
				else:
					error = "Couldn't log in The username and password combination doesn't exist"
			except:
				error = "Couldn't log in The username and password combination doesn't exist"
		return render_template("signIn.html", error = error)
	elif request.method == 'GET':
		return render_template("signIn.html")
	return render_template("signIn.html")


@app.route("/query/<userName>", methods=['POST','GET'])
def userQuery(userName):
	if not session.get('logged_in'):
		abort(401)
	if request.method == 'POST':
		bofh = None
		query = request.form['usrQuery']
		result = getQueryResult(userName, UserDic,query)
		lastQueries = UserDic.getUserLastQueries(userName)
		print(lastQueries)
		if result == None:
			bofh = makeMyMillenium()
		if bofh == None:
			return render_template('queryResults.html',userName=userName, result=result, lastQuery=query, pastQueries=lastQueries)
		else:
			return render_template('mock.html',userName=userName, excuse=bofh)
	elif request.method == 'GET':
		lastQueries = UserDic.getUserLastQueries(userName)
		return render_template('query.html',userName=userName, pastQueries=lastQueries)

@app.route('/logout/<userName>')
def logout(userName):
	UserDic.deleteEntry(userName)
	session.pop('logged_in', None)
	return redirect(url_for('main'))

@app.route("/signUp", methods=['POST','GET'])
def signUp():
	global cursor
	global usrStatement
	if request.method == 'POST':
		error = None
		usr = request.form['usrAlias']
		usrCon = request.form['usrAliasCon']
		passw = request.form['usrPass']
		passwCon = request.form['usrPassCon']
		if usr == "" or passw == "" or usrCon == "" or passwCon == "":
			error = "All fields are required"
		else:
			if usr!= usrCon or passw!=passwCon:
				error = "The usernames or the passwords don't match."
			elif not cleanUser(usr) or not cleanPass(passw):
				error = """Username must be 6 - 20 characters long and can't contain any of the following symbols: ?<!@*()/\<>,..$^&-=_+;
			\n* Passwords must be 6 - 20 characters long with at least one number, one lowercase letter, one uppercase letter with at least one of the following symbols: !@#$%^&*_+-="""
			elif usr in users:
				error = "Username has already been used"
			else:
				try:
					createUser(usr,passw)
					UserDic.addEntry(usr,passw)
					session['logged_in'] = True
					users.append(usr)
					return redirect(url_for('userQuery', userName=usr))
				except:
					error = "Something went wrong during user creation, contact your local admin"
		return render_template("signUp.html", error=error)
	elif request.method == 'GET':
		return render_template("signUp.html")


# Not yet implemented
@app.route("/profile/<userName>", methods=['POST','GET'])
def profile(userName):
	if not session.get('logged_in'):
		abort(401)
	else:
		pastUserQueries = UserDic.getUserDictionaryQueries(userName)
		return render_template('profile.html', userName=userName, queries=pastUserQueries)

if __name__ == "__main__":
	app.run(debug = True)
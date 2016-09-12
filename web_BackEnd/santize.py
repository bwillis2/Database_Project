import re

###############################################################################################################
## This entire module is to make sure that all input whether it be user info or a mysql query that it has no ##
## unexpected surprises. It checks and doesn't allow for any bad symbols that aren't allowed. As for mysql   ##
## it checks to make sure that you can only access certain tables, and catches you if there are any 		 ##
## dives for info about the rest of the database															 ##
###############################################################################################################


# Takes dirty input from usernames and check to make sure that there are no little surprises
def cleanUser(info):
	reg = re.compile("^((?<!@\*\(\)\\/<>,.\.\$\^&-\=_\+;)([A-Z]|[a-z]|[0-9]){6,20})$")

	if reg.match(info):
		return True
	else:
		return False

# Takes posibly unsantized passwords to check for unwanted special characters and only allows certain ones
def cleanPass(passw):
	reg = re.compile("^((?<!\(\)\\/<>,\.)([A-Z]|[a-z]|[0-9]|(!|@|#|\$|%|\^|&|\*|_|\-|\+|=)){6,20})$")

	if reg.match(passw):
		return True
	else:
		return False

# This method taks in queries and makes sure through popping and pushing parentheses that help make up a query
# which is a common way to try to sql inject by using a method like ); select * from users where 1=1;
def dirtyQuery(query):
	reg = re.compile("--")
	stack = []
	# Letter by letter check
	for i in query:
		# Pushes on the stack
		if i == '(':
			stack.append(i)
		if i == ')':
			if len(stack) != 0:
				stack.pop()
			else:
				return False
	if len(stack) != 0:
		return False
	return True

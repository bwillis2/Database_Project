Instructions on how to set up this project:

1: Start is setting up the database:
	A: First download MySQL if it is isn't alreay downloaded

	B: Next create the database in MySQL, user the command below
		create database Fortunes
	
	C: All that needs to be done to do this is changing the full qualified path on line 222 in insert.py, and giving admin information on line 217 (just enough power to insert into the database). The path that needs to change is before Project, after that execute insert.py in Python 2. 
	* Note if you do not have MySQLdb installed in Python 2, your have to install it. use the command below for linux:
		sudo apt-get install python-mysqldb

2: While waiting all the data to insert into the database create the virtual environment.
* Note my venv file will probably not work off any other machine because virtual environment uses hardcoded path variables, or at least that is what I have read. 

	A: First install virtualenv if it hasn't been done previously, command for linux (Ubuntu) below:
		sudo apt-get install python-virtualenv

	B: Next setup a virtual environment where ever you would like to host this site from. Command to create it with the name environment, and to use Python 3(again download if you don't have it) below:
		virtualenv --python=/usr/bin/python3 environment

	C: Next start up the virtual environment, after starting this the file name in parentheses should be tacked on before your username on the deivce. Example for mine is: 
		(environment)neo154@Titan:~./environment
	
	The command to start thie virtual environment is below:
		. environment/bin/activate

			To deactivate this when done hosting user command:
				deactivate

3: After starting up the virtual environment(for the next steps it must be activated and the terminal executing these commands must be using the virtual environment), it is time to setup the plugins for Python 3. 

	A: First install the Flask modules (install pip if it is not already on the hosting machine), the command is below:
		pip install Flask

	B: Next install the MySQLdb plugin for Python 3, command for linux pip below:
		pip install mysqlclient


4: After successfully installing everything the next step is easy, just copy the following files/directories to the virtual environment folder you created:
	
	app.py
	mysqlHelper.py
	sanitze.py
	getReady.py
	bofh-excuses
	templates/
	static/

	These files are simply the ones to help run my website, with all the features.
	After that though the website needs admin level permissions to that database in getReady.py on lines 5 and 7. These permissions are just there to create users, and granting their permissions.

5: When the inserting of the data into the database is finished there is one more step in MySQL. Just login directly to run a the tableMaker script found in ./Project/Code/

	A: Simply go to ./Project/Code/ and login to MySQL in this directory and run:
		\. tableMaker.sql

		This creates all extra tables for key-mapping and the view for easy access for users.

6: The last and final thing is to host the site, do this by using the terminal with your virtual enviroment running(activated) and execute app.py in python.

You should be able to now go the address it says it is hosting at and the website should open up.
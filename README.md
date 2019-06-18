As a person,
So that I can see bookmarks I have logged,
I’d like to see a list of bookmarks on my screen

Noun      Verb
Person    See*
Bookmark*    
List*    
Screen    

Bookmark <— See —> List

Database Setup

1) Connect to psql
From the terminal type 'psql postgres' and press enter. You are now in the psql environment.

2) Create the database using the psql command CREATE DATABASE bookmark_manager;
Type 'CREATE DATABASE bookmark_manager;' - press enter. Check your database has been created with the command '\l' - this lists all the current databases.

3) Connect to the database using the pqsl command \c bookmark_manager;

4) Run the query we have saved in the file 01_create_bookmarks_table.sql
Copy and paste the contents of this file into the terminal and press enter. View the table using the '\dt' command. Find out more information about a particular table using '\'d+ bookmarks'.

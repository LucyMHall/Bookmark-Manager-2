<h1> Bookmark Manager Challenge </h1>

<h2> User Stories </h2>

As a person,
So that I can see bookmarks I have logged,
I’d like to see a list of bookmarks on my screen

As a person,
So that I can revisit my most accessed web pages,
I'd like to be able to add to my list of bookmarks

<h2> Proposed classes: </h2>
- Bookmarks
- Potentially (ListofBookmarks)

![CRC_Database_Bookmark_Manager](/images/IMG_20190620_090428261.jpg)

<h2> Database Setup: Test and Development </h2>

1) Connect to psql
From the terminal type 'psql postgres' and press enter. You are now in the psql environment.

2) You need to make both a test database which is used when running tests on the program and simulated user interactions
  1) Test Database: Type into the terminal `CREATE DATABASE bookmark_manager_test;`
  2) Development Database: Type into the terminal `CREATE DATABASE bookmark_manager;`
  3) Check databases have been created: `\l` command, lists all the current databases

3) Connect to the databases using the pqsl command \c bookmark_manager;

4) Run the query we have saved in the file 01_create_bookmarks_table.sql for both the test and development database
Copy and paste the contents of this file into the terminal and press enter. View the table using the '\dt' command. Find out more information about a particular table using '\'d+ bookmarks'.

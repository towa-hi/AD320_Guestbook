to install, 
1. git clone https://github.com/towa-hi/AD320_Guestbook
2. create a file called db_creds.json. the contents of the file should look like this
{
  "host" : "localhost",
  "user" : "root",
  "password" : "your password",
  "database" : "back_row"
}
3. run CreateAndPopulateDB.sql to create the database
4. npm install
5. edit /public/script.js var called serverIP to your server IP if you are not running from localhost.
6. npm start to run the program.


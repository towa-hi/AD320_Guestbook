to install, type "npm install"
to start, type "SET DEBUG=ad320-guestbook:* & npm start" 

AD320_Guestbook
    L bin
        www
    L public
        L stylesheets
            style.css
        index.html
        script.js
        admin.html *NEW*
        adminscript.js *NEW*
    L routes
        comments.js
        index.js
        admin.js *NEW*
        post.js *NEW*
    app.js
    db.js
    db_creds.json
    package-lock.json
    package.json
    readme.md
    
www
This is the part of the program that starts first. Most of this code handles errors and sets up the HTTP server and makes it listen for gets from the client. When we add IP address tracking, this will probably be where the first code for that will end up being. Initializes app.js.

style.css
This is the global style sheet used for both index.html and admin.html. 

index.html
This is the actual client side html that loads when it's being served by app.js -> indexRouter -> index.html. Static HTML elements and the post form goes here. A div here called display is edited by script.js to be filled with comments.

script.js
This is the client side javascript that runs onload with index.html. upon loading, it does a get.JSON query from the api ("http://localhost:3000/api/v1/comments/all") and then processes the JSON array by formatting it into comments and then editing the index.html. Pagination is done here. This script is also responsible for all the pagination options and needs to be served the default options parameters from the server side. Other interactive js stuff like the char counter go here.

admin.html
This is the page that the admin has to access to edit the guestbook and change settings. This page will have a lot of forms and requires adminscript.js to edit the database. This page should be password protected. Cosmetic options will be here too.

adminscript.js
This is the js part of admin.html that will have functions for manipulating the options parameters in our database. parts of this will also edit our css file.

comments.js
So far, this route simply queries the database for all rows and spits out the raw data as result. Anything related to the actual sql queries used would go here.

index.js
This route gets the main page (index.html)

app.js
This is the second thing to be initialized. it loads all the dependencies like express and the logger. adding a new route in here is the first step to making a new page after making that route in /routes/..

db.js
This module just makes a db connection. comments.js uses this and posts.js will probably need this too.


package-lock.json
This file just shows what packages are in. don't touch this ever.

package.json
Never touch this too.

readme.md
installation instructions

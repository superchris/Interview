Setting up
----------

This is a pretty simple rails app, built with ruby 1.9.2.  To populate the database with
some users and roles, run 

   rake db:seed.

Command line interface
----------------------

The command line interface for changing a user's password is a rake task.  

   rake change_password USER=santa PASSWORD=thenewpassword
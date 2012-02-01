# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
nice = Role.create(:name => "Nice")
naughty = Role.create(:name => "Naughty")

User.create(:username => "Santa", :role => nice, :password => "cringle", :password_confirmation => "cringle")
User.create(:username => "Frosty", :role => nice, :password => "snowman", :password_confirmation => "snowman")
User.create(:username => "Abominable", :role => naughty, :password => "ice", :password_confirmation => "ice")
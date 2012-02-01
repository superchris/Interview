desc "Update user password: rake USER=bob PASSWORD=secret change_password"
task :change_password => :environment do
  user = User.find_by_username(ENV["USER"])
  user.update_attributes!(:password => ENV["PASSWORD"], :password_confirmation => ENV["PASSWORD"])
end
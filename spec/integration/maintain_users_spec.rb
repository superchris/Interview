require 'spec_helper'

describe "User list" do
  Given do
    good = Role.create(:name => "good")
    bad = Role.create(:name => "bad")
    User.create!(:username => "Good guy", :role => good, :password => "foo")
    User.create!(:username => "Bad guy", :role => bad, :password => "foo")
  end
  describe do
    When do
      visit users_path
    end
    Then { page.should have_content("Good guy") }
    Then { page.should have_content("good") }
  end
  
  describe "editing a user" do
    Given do 
      visit users_path
      click_link "Good guy"
    end
    describe "successfully changing password" do
      When do
        fill_in "Password", :with => "bar"
        fill_in "Password confirmation", :with => "bar"
        click_button "Update User"
      end
      Then { current_url.should == users_url }
      Then { User.find_by_username("Good guy").authenticate("bar").should be_true }
      Then { page.should have_content("User saved.")}
    end
    describe "entering different passwords" do
      When do
        fill_in "Password", :with => "bar"
        fill_in "Password confirmation", :with => "not bar"
        click_button "Update User"
      end
      Then { page.should have_content("doesn't match") }
    end
        
  end
    
end
require 'spec_helper'

describe User do
  describe "password" do
    Given(:user) { User.create(:username => "bob", :password => "supersecret", :password_confirmation => "supersecret")}
    Then { user.authenticate("supersecret").should be_true }
  end
  it { should belong_to(:role) }
end

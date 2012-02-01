require 'spec_helper'

describe Role do
  it { should validate_presence_of(:name) }
  describe "to_s" do
    Given(:role) { Role.new(:name => "the role") }
    Then { role.to_s.should == role.name }
  end
end
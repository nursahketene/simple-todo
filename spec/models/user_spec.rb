require 'spec_helper'

describe User do
  it "should create a user" do
    Factory(:user).should_not eq(nil)
  end
end

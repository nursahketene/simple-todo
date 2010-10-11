require 'spec_helper'

describe Item do
  it "should create an item" do
    Factory(:item).should_not eq(nil)
  end
end

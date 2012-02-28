require 'spec_helper'

describe Item do
  it "should create an item" do
    Factory(:item).should_not eq(nil)
  end
  it "should retrieve todo items" do
    Factory(:item)
    
    Item.todo.should_not be_empty
  end
end

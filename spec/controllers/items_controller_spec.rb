require 'spec_helper'

describe ItemsController do

  def mock_item(stubs={})
    @mock_item ||= mock_model(Item, stubs).as_null_object
  end
  
  before :each do
    controller.stub!(:require_user).and_return(true)
  end

  describe "GET index" do
    it "assigns all items as @items" do
      Item.stub(:todo) { [mock_item] }
      Item.stub(:done) { [] }
      get :index
      assigns(:todo).should eq([mock_item])
      assigns(:done).should eq([])
    end
  end

  describe "GET done" do
    it "sets the Item to state done" do
      @item = Factory(:item)
      Item.stub(:find) { @item }
      get :done, :id => "1"
      @item.done.should eq(true)
    end
  end
  
  describe "GET show" do
    it "assigns the requested item as @item" do
      Item.stub(:find).with("37") { mock_item }
      get :show, :id => "37"
      assigns(:item).should be(mock_item)
    end
  end

  describe "GET new" do
    it "assigns a new item as @item" do
      Item.stub(:new) { mock_item }
      get :new
      assigns(:item).should be(mock_item)
    end
  end

  describe "GET edit" do
    it "assigns the requested item as @item" do
      Item.stub(:find).with("37") { mock_item }
      get :edit, :id => "37"
      assigns(:item).should be(mock_item)
    end
  end


end

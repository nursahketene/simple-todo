class Item < ActiveRecord::Base
  
  
  scope :todo, where(:done => false)
  scope :done, where(:done => true)
end

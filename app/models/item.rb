class Item < ActiveRecord::Base
  
  scope :default_order, order(:updated_at)
  scope :todo, default_order.where(:done => false)
  scope :done, default_order.where(:done => true)

  validates_presence_of :title
end

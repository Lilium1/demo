class Item < ActiveRecord::Base
  has_many :carts
  has_many :orders
end

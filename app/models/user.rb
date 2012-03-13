class User < ActiveRecord::Base

  attr_accessor :name, :password

  has_many :carts
  has_many :orders

  validates :email, :length => { :minimum => 6 }, :presence => true, :uniqueness => true
  validates :name, :length => { :minimum => 4 }, :presence => true, :uniqueness => true
  validates :password, :length => { :minimum => 6 }, :presence => true
end

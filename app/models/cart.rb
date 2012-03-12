class Cart < ActiveRecord::Base
  belongs_to :user
  belongs_to :item

  validates :user_id, :presence => true
  validates :item_id, :presence => true
  validates :amount, :presence => true
end

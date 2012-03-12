class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :item_id
      t.integer :user_id
      t.integer :amount

      t.timestamps
    end
  end
end

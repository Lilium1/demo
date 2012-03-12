class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :address
      t.string :street
      t.string :postcode
      t.string :email

      t.timestamps
    end
  end
end

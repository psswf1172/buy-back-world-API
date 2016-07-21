class DeviseCreateQuotes < ActiveRecord::Migration
  
  def change
    create_table :quotes do |t|
      t.string :name
      t.string :phone
      t.string :device 
      t.string :model
      t.string :network
      t.integer :size
      t.string :condition
      t.monetize :price
      
      t.timestamps null: false
    end
  end
end
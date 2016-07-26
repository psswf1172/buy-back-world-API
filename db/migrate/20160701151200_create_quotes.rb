class CreateQuotes < ActiveRecord::Migration
  
  def change
    create_table :quotes do |t|
      t.string :name
      t.string :phone
      t.string :device 
      t.string :model
      t.string :network
      t.string :condition
      t.integer :size
      t.integer :price
      
    end
  end
end
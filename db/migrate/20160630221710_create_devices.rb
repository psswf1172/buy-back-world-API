class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :name
      t.string :model
      t.string :network
      t.integer :size
      t.string :image
      t.monetize :price
    end
  end
end

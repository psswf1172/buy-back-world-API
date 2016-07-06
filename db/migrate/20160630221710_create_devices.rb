class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :device_type
      t.string :device_model
      t.string :network
      t.integer :size
      t.string :image
      t.monetize :price
      t.belongs_to :brand
    end
  end
end

class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :device_type
      t.string :device_model
      t.string :network
      t.integer :size
      t.string :image
      t.monetize :price
      t.integer :brand_id
    end

    add_index :devices, :brand_id
  end
end

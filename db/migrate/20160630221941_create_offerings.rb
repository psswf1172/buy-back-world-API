class CreateOfferings < ActiveRecord::Migration
  def change
    create_table :offerings do |t|
      t.string :condition
      t.float :price
      t.references :device, index: true, foreign_key: true
    end
  end
end

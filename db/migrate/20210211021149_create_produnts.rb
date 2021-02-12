class CreateProdunts < ActiveRecord::Migration[5.2]
  def change
    create_table :produnts do |t|
      t.string :name
      t.integer :price
      t.string :vender

      t.timestamps
    end
  end
end

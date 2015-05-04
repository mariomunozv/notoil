class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :barcode
      t.string :brand
      t.string :name
      t.string :description
      t.integer :price
      t.integer :price_net
      t.references :family, index: true

      t.timestamps
    end
  end
end

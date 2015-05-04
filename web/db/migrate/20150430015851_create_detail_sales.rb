class CreateDetailSales < ActiveRecord::Migration
  def change
    create_table :detail_sales do |t|
      t.string :name
      t.integer :quantity
      t.integer :valor
      t.references :sale, index: true
      t.references :product, index: true

      t.timestamps
    end
  end
end

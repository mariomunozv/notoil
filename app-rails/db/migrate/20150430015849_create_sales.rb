class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :name
      t.string :description
      t.integer :total

      t.timestamps
    end
  end
end

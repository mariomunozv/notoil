class CreateDiscounts < ActiveRecord::Migration
  def change
    create_table :discounts do |t|
      t.string :name
      t.integer :quantity
      t.references :product, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end

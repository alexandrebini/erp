class CreateSaleItems < ActiveRecord::Migration
  def change
    create_table :sale_items do |t|
      t.references :sale, index: true
      t.references :product, index: true
      t.integer :price
      t.integer :quantity, default: 1
      t.integer :discount, index: true, default: 0
      t.integer :total
      t.timestamps
    end
  end
end
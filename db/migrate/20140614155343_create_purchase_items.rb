class CreatePurchaseItems < ActiveRecord::Migration
  def change
    create_table :purchase_items do |t|
      t.references :purchase, index: true
      t.references :product, index: true
      t.integer :price
      t.integer :quantity
      t.integer :total
      t.timestamps
    end
  end
end
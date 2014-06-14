class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.references :supplier, index: true
      t.integer :discount, index: true, default: 0
      t.integer :total, index: true
      t.timestamps
    end
  end
end

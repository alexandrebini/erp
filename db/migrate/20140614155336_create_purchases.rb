class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.references :supplier, index: true
      t.integer :total_cents, index: true
      t.timestamps
    end
  end
end

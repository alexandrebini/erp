class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.references :customer, index: true
      t.references :vendor, index: true
      t.integer :discount_cents, index: true
      t.integer :total_cents, index: true
      t.timestamps
    end
  end
end
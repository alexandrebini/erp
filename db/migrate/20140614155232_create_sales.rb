class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.references :customer, index: true
      t.references :vendor, index: true
      t.integer :discount, index: true, default: 0
      t.integer :total, index: true
      t.timestamps
    end
  end
end
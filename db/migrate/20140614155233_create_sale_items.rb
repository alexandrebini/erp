class CreateSaleItems < ActiveRecord::Migration
  def change
    create_table :sale_items do |t|
      t.references :sale, index: true
      t.references :product, index: true
      t.timestamps
    end
  end
end

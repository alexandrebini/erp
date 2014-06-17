class CreateTaxpayers < ActiveRecord::Migration
  def change
    create_table :taxpayers do |t|
      t.references :third_party, index: true
      t.integer :type, default: 0, index: true
      t.string :value, index: true

      t.timestamps
    end
  end
end
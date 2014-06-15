class CreateThirdParties < ActiveRecord::Migration
  def change
    create_table :third_parties do |t|
      t.string :type, index: true
      t.string :name
      t.timestamps
    end
  end
end
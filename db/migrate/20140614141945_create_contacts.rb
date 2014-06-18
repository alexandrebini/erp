class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.references :third_party, index: true
      t.integer :type, default: 0, index: true
      t.string :value

      t.timestamps
    end
  end
end
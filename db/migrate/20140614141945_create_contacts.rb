class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :type, default: 0, index: true
      t.string :value

      t.timestamps
    end
  end
end
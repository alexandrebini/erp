class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.references :contactable, polymorphic: true, index: true
      t.string :symbol, index: true
      t.string :value

      t.timestamps
    end
  end
end
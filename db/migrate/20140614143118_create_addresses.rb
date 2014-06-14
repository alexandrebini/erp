class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :addressable, polymorphic: true, index: true
      t.string :street
      t.string :number
      t.integer :postal_code
      t.references :city, index: true
      t.string :complement

      t.timestamps
    end
  end
end
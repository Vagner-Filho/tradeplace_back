class CreateAddresses < ActiveRecord::Migration[7.2]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :number
      t.string :neighborhood
      t.integer :cep
      t.string :complement
      t.string :city

      t.timestamps
    end
  end
end

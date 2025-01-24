class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :phone
      t.integer :address_id
      t.string :user_type

      t.timestamps
    end
  end
end

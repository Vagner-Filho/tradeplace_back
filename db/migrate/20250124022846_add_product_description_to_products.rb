class AddProductDescriptionToProducts < ActiveRecord::Migration[7.2]
  def change
    add_column :products, :product_description, :string
  end
end

class AddImagesAttributeToProductsAndComments < ActiveRecord::Migration[5.0]
  def up
    add_attachment :products, :image
  end

  def down
    remove_attachment :products, :image
  end

  def change
    add_column :products, :comments, :string
  end
end

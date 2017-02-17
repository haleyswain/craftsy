class AddImagesAttributeToProductsAgain < ActiveRecord::Migration[5.0]
  def up
    add_attachment :products, :image
  end
end

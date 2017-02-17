class AddImagesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.column :name, :string
      t.column :image_source, :string
      t.column :product_id, :integer
    end
  end
end

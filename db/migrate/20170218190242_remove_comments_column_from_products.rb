class RemoveCommentsColumnFromProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :comments
  end
end

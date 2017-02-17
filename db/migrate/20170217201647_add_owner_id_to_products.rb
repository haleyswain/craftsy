class AddOwnerIdToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :owner_id, :integer
  end
end

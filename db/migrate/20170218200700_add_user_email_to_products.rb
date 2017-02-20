class AddUserEmailToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :owner_email, :string
  end
end

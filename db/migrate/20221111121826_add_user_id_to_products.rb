class AddUserIdToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :user_id, :string
  end
end

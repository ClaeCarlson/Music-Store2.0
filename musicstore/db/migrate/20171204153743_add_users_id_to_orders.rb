class AddUsersIdToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :users_id, :string
  end
end

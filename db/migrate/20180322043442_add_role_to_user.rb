class AddRoleToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :roles, :string
  end
end

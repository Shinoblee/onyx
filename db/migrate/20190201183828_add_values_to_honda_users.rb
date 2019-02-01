class AddValuesToHondaUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :honda_users, :first_name, :string
    add_column :honda_users, :last_name, :string
    add_column :honda_users, :plant_id, :integer
    add_column :honda_users, :role, :string
    add_column :honda_users, :honda_id, :string
    add_column :honda_users, :group, :string
  end
end

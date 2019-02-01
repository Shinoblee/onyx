class AddValuesToSupplierUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :supplier_users, :first_name, :string
    add_column :supplier_users, :last_name, :string
    add_column :supplier_users, :makerlayout_id, :integer
  end
end

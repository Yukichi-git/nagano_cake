class AddColumnToEndUser < ActiveRecord::Migration[5.2]
  def change
  	add_column :end_users, :name, :string
  	add_column :end_users, :address, :string
  	add_column :end_users, :address_number, :integer
  	add_column :end_users, :phone_number, :integer
  end
end

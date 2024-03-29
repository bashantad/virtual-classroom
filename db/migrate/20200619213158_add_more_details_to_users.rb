class AddMoreDetailsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :phone, :string
    add_column :users, :state, :string
    add_column :users, :street_address, :string
    add_column :users, :city, :string
    add_column :users, :zip_code, :integer
    add_column :users, :country, :string
  end
end

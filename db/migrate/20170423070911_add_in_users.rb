class AddInUsers < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string
  	add_column :users, :address, :string
  end
end

class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gender, :string
    add_column :users, :phone_number, :string
    add_column :users, :address, :text
  end
end

class AddUserInfoToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :open_id, :string
    add_column :users, :nick_name, :string
    add_column :users, :gender, :integer
    add_column :users, :avatar_url, :string
  end
end

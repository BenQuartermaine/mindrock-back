class ModifyUserColumns < ActiveRecord::Migration[5.2]
  def change
    # rename_column :table, :old_column, :new_column
    rename_column :users, :avatar_url, :avatarUrl
    rename_column :users, :nick_name, :nickName
  end
end

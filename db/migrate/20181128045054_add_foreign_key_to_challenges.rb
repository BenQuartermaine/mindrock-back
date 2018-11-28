class AddForeignKeyToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :category_id, :integer
    add_foreign_key :challenges, :categories
  end
end

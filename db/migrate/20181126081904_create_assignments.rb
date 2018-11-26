class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.references :user, foreign_key: true
      t.references :challenge, foreign_key: true
      t.date :date
      t.boolean :status

      t.timestamps
    end
  end
end

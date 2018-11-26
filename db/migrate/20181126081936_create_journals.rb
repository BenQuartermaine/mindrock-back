class CreateJournals < ActiveRecord::Migration[5.2]
  def change
    create_table :journals do |t|
      t.references :assignment, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end

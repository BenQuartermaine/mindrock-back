class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.integer :leader
      t.references :challenge, foreign_key: true

      t.timestamps
    end
  end
end

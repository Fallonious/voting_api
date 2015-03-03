class CreateVoters < ActiveRecord::Migration
  def change
    create_table :voters do |t|
      t.integer :voter_id
      t.string :party_id

      t.timestamps null: false
    end
  end
end

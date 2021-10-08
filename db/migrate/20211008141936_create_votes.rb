class CreateVotes < ActiveRecord::Migration[6.1]
  def up
    create_table :votes do |t|
      t.integer :user_id
      t.integer :votable_id
      t.string :votable_type
      t.integer :value

      t.timestamps
    end
  end

  def down
    drop_table :votes
  end
end

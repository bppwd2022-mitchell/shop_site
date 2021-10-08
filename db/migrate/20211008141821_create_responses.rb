class CreateResponses < ActiveRecord::Migration[6.1]
  def up
    create_table :responses do |t|
      t.integer :question_id
      t.integer :user_id
      t.string :title
      t.text :content

      t.timestamps
    end
  end

  def down
    drop_table :responses
  end
end

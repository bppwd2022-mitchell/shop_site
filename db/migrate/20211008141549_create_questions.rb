class CreateQuestions < ActiveRecord::Migration[6.1]
  def up
    create_table :questions do |t|
      t.integer :user_id
      t.string :title
      t.text :content
      t.integer :tag_id
      t.integer :views

      t.timestamps
    end
  end

  def down
    drop_table :questions
  end
end

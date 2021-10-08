class CreateComments < ActiveRecord::Migration[6.1]
  def up
    create_table :comments do |t|
      t.integer :user_id
      t.text :content
      t.integer :commentable_id
      t.string :commentable_type

      t.timestamps
    end
  end

  def down
    drop_table :comments
  end
end

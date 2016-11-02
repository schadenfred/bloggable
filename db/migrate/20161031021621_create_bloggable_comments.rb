class CreateBloggableComments < ActiveRecord::Migration[5.0]
  def change
    create_table :bloggable_comments do |t|
      t.integer :article_id
      t.text :text
      t.integer :commenter_id

      t.timestamps
    end

    add_index :bloggable_comments, [:article_id, :commenter_id]
  end
end

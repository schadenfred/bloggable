class CreateBloggableArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :bloggable_articles do |t|
      t.string :title
      t.string :slug
      t.text :text
      t.integer :author_id
      t.integer :bloggable_id
      t.string :bloggable_type

      t.timestamps
    end

    add_index :bloggable_articles, :title
    add_index :bloggable_articles, :slug
    add_index :bloggable_articles, [:bloggable_id, :bloggable_type], name: "bloggable"
  end
end

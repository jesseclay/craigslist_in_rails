class CreatePostsTable < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :email
      t.text :content
      t.integer :price
      t.string :url
      t.references :category, index: true
      t.timestamps
    end
  end
end

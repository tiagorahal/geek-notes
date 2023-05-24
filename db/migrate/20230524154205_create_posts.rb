class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author_user
      t.text :description
      t.string :image
      t.integer :likes

      t.timestamps
    end
  end
end

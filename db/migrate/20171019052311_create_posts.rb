class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :image
      t.string :title
      t.text :description
      t.text :recipe
      t.integer :duration
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

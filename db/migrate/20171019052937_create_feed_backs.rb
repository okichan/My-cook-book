class CreateFeedBacks < ActiveRecord::Migration[5.1]
  def change
    create_table :feed_backs do |t|
      t.text :comment
      t.boolean :like, defaul: false, null: false
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end

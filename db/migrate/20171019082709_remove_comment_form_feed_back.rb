class RemoveCommentFormFeedBack < ActiveRecord::Migration[5.1]
  def change
    remove_column :feed_backs, :comment, :text
  end
end

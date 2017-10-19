class Post < ApplicationRecord
  mount_uploader :image, ImageUploader


  belongs_to :user
  has_many :feed_backs, dependent: :destroy
  has_many :rated_users, through: :feed_backs, source: :user
  has_many :comments, dependent: :destroy

  def rated_by?(user)
    self.rated_users.exists?(id: user.id)
  end
end

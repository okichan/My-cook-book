class Post < ApplicationRecord
  belongs_to :user
  has_many :feed_backs, dependent: :destroy
  has_many :rated_users, through: :feed_backs, source: :user

  def rated_by?(user)
    self.rated_users.exists?(id: user.id)
  end
end

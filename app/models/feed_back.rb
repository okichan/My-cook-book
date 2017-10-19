class FeedBack < ApplicationRecord
  belongs_to :user
  belongs_to :post


  scope :liked, -> {where(like: true)}
  scope :unliked, -> {where(like: false)}
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_one :profile, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :feed_backs, dependent: :destroy
  has_many :rated_posts, through: :feed_backs, source: :post
  has_many :comments, dependent: :destroy

end

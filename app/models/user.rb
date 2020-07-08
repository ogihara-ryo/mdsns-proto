class User < ApplicationRecord
  has_many :posts, dependent: :destroy

  has_many :followee_follows, foreign_key: :follower_id, class_name: 'Follow', dependent: :destroy, inverse_of: :follower
  has_many :followees, through: :followee_follows, source: :followee

  has_many :follower_follows, foreign_key: :followee_id, class_name: 'Follow', dependent: :destroy, inverse_of: :followee
  has_many :followers, through: :follower_follows, source: :follower

  def to_param
    nickname
  end

  def follow(follower)
    return if self == follower

    followees << follower unless following?(follower)
  end

  def unfollow(follower)
    followee_follows.find_by(followee_id: follower.id).destroy! if following?(follower)
  end

  def following?(follower)
    followees.include?(follower)
  end
end

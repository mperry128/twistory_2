class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :likes, :dependent => :destroy
         has_many :comments, :dependent => :destroy

         has_many :tweet_comments, :through => :likes, :source => :tweet
         has_many :tweets_likes, :through => :likes, :source => :tweet
end

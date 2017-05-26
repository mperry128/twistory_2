class Tweet < ApplicationRecord

  has_many :likes, :dependent => :destroy
  has_many :comments, :dependent => :destroy

  has_many :users_comments, :through => :likes, :source => :user
  has_many :users_likes, :through => :likes, :source => :user

end

class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.string :tweet_comments
      t.string :tweet_likes

      t.timestamps

    end
  end
end

class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :tweet_id
      t.integer :user_id

      t.timestamps

    end
  end
end

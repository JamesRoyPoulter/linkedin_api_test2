class CreateMentorProfiles < ActiveRecord::Migration
  def change
    create_table :mentor_profiles do |t|
      t.integer :num_twitter_followers
      t.integer :num_angelist_followers
      t.integer :mentor_ranking

      t.timestamps
    end
  end
end

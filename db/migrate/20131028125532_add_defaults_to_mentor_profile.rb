class AddDefaultsToMentorProfile < ActiveRecord::Migration
  def change
    change_column :mentor_profiles, :mentor_ranking, :integer, default: 0
    change_column :mentor_profiles, :num_twitter_followers, :integer, default: 0
    change_column :mentor_profiles, :num_angelist_followers, :integer, default: 0
  end
end

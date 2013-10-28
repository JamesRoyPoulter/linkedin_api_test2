class AddUserIdToMentorProfile < ActiveRecord::Migration
  def change
    add_column :mentor_profiles, :user_id, :integer
  end
end

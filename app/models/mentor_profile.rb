class MentorProfile < ActiveRecord::Base
  attr_accessible :mentor_ranking, :num_angelist_followers, :num_twitter_followers, :user_id

  belongs_to :user

end

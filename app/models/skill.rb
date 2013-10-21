class Skill < ActiveRecord::Base
  attr_accessible :full_profile_id, :skill

  belongs_to :full_profile

end

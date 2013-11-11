class Skill < ActiveRecord::Base
  attr_accessible :full_profile_id, :skill

  validates :skill, uniqueness: {scope: :full_profile_id}

  belongs_to :full_profile

end

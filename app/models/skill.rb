class Skill < ActiveRecord::Base
  attr_accessible :full_profile_id, :skill

  validates :skill, uniqueness: true

  belongs_to :full_profile

end

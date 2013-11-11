class Position < ActiveRecord::Base
  attr_accessible :company, :end_date, :full_profile_id, :is_current, :start_date, :summary, :title

  validates :title, uniqueness: {scope: :full_profile_id}

  belongs_to :full_profile
end

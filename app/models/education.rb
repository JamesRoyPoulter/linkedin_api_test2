class Education < ActiveRecord::Base
  attr_accessible :activities, :degree, :end_date, :field_of_study, :full_profile_id, :notes, :school_name, :start_date

  validates :school_name, uniqueness: {scope: :full_profile_id}

  belongs_to :full_profile
end

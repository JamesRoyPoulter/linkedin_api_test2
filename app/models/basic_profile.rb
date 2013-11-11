class BasicProfile < ActiveRecord::Base
  attr_accessible :first_name, :formatted_name, :headline, :industry, :last_name, :location, :maiden_name, :picture_url, :public_profile_url, :specialties, :summary, :num_connections, :user_id

  validates :first_name, uniqueness: :true
  validates :formatted_name, uniqueness: :true
  validates :headline, uniqueness: :true
  validates :industry, uniqueness: :true
  validates :last_name, uniqueness: :true
  validates :location, uniqueness: :true
  validates :maiden_name, uniqueness: :true
  validates :picture_url, uniqueness: :true
  validates :public_profile_url, uniqueness: :true
  validates :specialties, uniqueness: :true
  validates :summary, uniqueness: :true
  validates :num_connections, uniqueness: :true

  belongs_to :user
end

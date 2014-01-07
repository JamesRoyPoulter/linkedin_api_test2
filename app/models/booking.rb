class Booking < ActiveRecord::Base
  attr_accessible :slot, :date, :room, :user_id

  belongs_to :user

end

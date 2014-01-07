class Booking < ActiveRecord::Base
  attr_accessible :booking_slot, :date, :other, :user_id
end

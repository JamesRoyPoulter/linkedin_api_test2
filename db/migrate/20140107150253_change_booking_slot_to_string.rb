class ChangeBookingSlotToString < ActiveRecord::Migration
  def self.up
   change_column :bookings, :slot, :string
  end

  def self.down
   change_column :bookings, :slot, :float
  end
end

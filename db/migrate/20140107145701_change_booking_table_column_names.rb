class ChangeBookingTableColumnNames < ActiveRecord::Migration
  def change
    change_table :bookings do |t|
      t.rename :booking_slot, :slot
      t.rename :other, :room
    end
  end
end

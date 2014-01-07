class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.float :booking_slot
      t.string :date
      t.string :other

      t.timestamps
    end
  end
end

class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.date :booking_date
      t.string :booking_time
      t.string :end_time
      t.integer :service_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

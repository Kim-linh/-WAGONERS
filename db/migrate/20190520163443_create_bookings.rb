class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :start_at
      t.datetime :end_at
      t.references :user, foreign_key: true
      t.references :wagoner, foreign_key: true

      t.timestamps
    end
  end
end

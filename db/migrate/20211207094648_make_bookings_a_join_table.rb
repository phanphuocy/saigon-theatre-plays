class MakeBookingsAJoinTable < ActiveRecord::Migration[6.1]
  def up
    Booking.delete_all
    remove_column :bookings, :name
    remove_column :bookings, :email
    add_column :bookings, :user_id, :integer
  end

  def down
    Booking.delete_all
    remove_column :bookings, :user_id
    add_column :bookings, :name, :string
    add_column :bookings, :email, :string
  end
end

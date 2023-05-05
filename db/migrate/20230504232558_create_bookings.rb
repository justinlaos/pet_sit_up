class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :status, default: 0
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :animal_name
      t.integer :animal_type, default: 0

      t.integer :hours, default: 0
      t.integer :price, default: 0
      t.datetime :service_date

      t.timestamps
    end
  end
end

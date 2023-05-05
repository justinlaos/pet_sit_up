class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :status, null: false, default: 0
      t.integer :hours, null: false, default: 0
      t.integer :price, null: false, default: 0
      t.datetime :service_date, null: false

      t.belongs_to :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end

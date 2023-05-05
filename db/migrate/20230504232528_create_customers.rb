class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :animal_name, null: false
      t.integer :animal_type, null: false, default: 0

      t.timestamps
    end
  end
end

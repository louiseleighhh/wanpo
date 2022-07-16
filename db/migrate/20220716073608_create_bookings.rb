class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :dogsitting, null: false, foreign_key: true
      t.datetime :starts_at
      t.datetime :ends_at
      t.integer :status

      t.timestamps
    end
  end
end

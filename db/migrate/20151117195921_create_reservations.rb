class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :party_size
      t.datetime :time

      t.timestamps null: false
    end
  end
end

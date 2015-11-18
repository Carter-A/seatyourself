class RenameForeignKeysReservations < ActiveRecord::Migration
  def change
    rename_column :reservations, :users_id, :user_id
    rename_column :reservations, :restaurants_id, :restaurant_id
  end
end

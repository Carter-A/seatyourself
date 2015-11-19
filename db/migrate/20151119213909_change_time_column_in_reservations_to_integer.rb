class ChangeTimeColumnInReservationsToInteger < ActiveRecord::Migration
  def change
  	remove_column :reservations, :time, :datetime
  	add_column :reservations, :time, :integer
  end
end

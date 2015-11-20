class ChangeTimeFromIntToTime < ActiveRecord::Migration
  def change
  	remove_column :reservations, :time, :integer
  	add_column :reservations, :time, :time
  end
end

class AddColumnToColdRooms < ActiveRecord::Migration[7.0]
  def change
    add_column :cold_rooms, :entry_temperature, :integer
  end
end

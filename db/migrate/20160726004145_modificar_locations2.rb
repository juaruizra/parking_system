class ModificarLocations2 < ActiveRecord::Migration
  def change
    remove_column  :locations, :max_slots, :string
    add_column  :locations, :max_slots, :integer
  end
end

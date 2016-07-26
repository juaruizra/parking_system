class ModificarLocation < ActiveRecord::Migration
  def change
    add_column :locations, :name, :string
    add_column :locations, :latitude, :float
    add_column :locations, :longitude, :float

    remove_column  :locations, :location_latitude, :string
    remove_column  :locations, :location_longitude, :string
    
  end
end

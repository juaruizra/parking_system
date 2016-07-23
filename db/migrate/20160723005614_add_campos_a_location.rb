class AddCamposALocation < ActiveRecord::Migration
  def change
    add_column :locations, :max_slots, :string
    add_column :locations, :address, :string


  end
end

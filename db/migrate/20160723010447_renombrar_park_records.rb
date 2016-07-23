class RenombrarParkRecords < ActiveRecord::Migration
  def change
    rename_column :park_records, :date_details, :entry_date
    add_column :park_records, :exit_date, :datetime
    add_column :park_records, :total, :float
  end
end

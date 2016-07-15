class ParkRecord < ActiveRecord::Base
  belongs_to :vehicle
  belongs_to :slots
end

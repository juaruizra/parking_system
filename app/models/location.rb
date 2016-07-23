class Location < ActiveRecord::Base
  has_many :slots

  validates :location_latitude, presence: true,numericality: { only_integer: true }
  validates :location_longitude, presence: true,numericality: { only_integer: true }




end

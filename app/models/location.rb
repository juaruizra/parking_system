class Location < ActiveRecord::Base
  has_many :slots

  validates :address, presence: true



after_validation :reverse_geocode
reverse_geocoded_by :latitude, :longitude do |obj,results|
  if geo = results.first
    obj.address   = geo.city+','+geo.postal_code+','+geo.country_code
#    obj.zipcode = geo.postal_code
#    obj.country = geo.country_code
  end
end



end

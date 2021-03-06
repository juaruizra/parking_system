class LocationsController < ApplicationController
  #GET/locations
  def index
    @locations = Location.all
    flash[:error] = 'No locations registered.' if @locations.empty?
  end
  #GET/locations/new
  def new
    @location=Location.new
  end
  #POST/locations
  def create
   @location = Location.new(location_params)
   if @location.save
     flash[:success] = 'Location registered successfully.'
     redirect_to locations_path
   else
     flash[:error] = @location.errors.full_messages.join(',')
     render 'new'
   end
 end

  def location_params
    params.require(:location).permit(:id, :name, :latitude, :longitude, :address, :max_slots, :description)
  end
  private :location_params
end

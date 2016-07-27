class LocationsController < ApplicationController
  #GET/locations
  def index
    @locations = Location.all
    flash[:error] = 'No locations registered.' if @locations.empty?
  end
  #GET/locations/new
  def new
    @locations_new=Location.new
  end
  #POST/locations
  def create
    @location=Location.new ({address:params[:location][:address],
                            latitude:params[:location][:latitude],
                            longitude:params[:location][:longitude]})
    @location.save
  end
end

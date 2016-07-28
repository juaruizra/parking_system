class VehiclesController < ApplicationController
  def new #es el nombre de la vista
    @user = current_user #se dice a que usuario es
    @vehicle = Vehicle.new
  end

  def index
    @user = User.find(params[:user_id])
    @vehicles = @user.vehicles
    flash[:error] = 'No vehicles registered.' if @vehicles.empty?
  end

  def create #recibe el post del formulario
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user_id= current_user.id

    #guardar en la base de datos
      if @vehicle.save #si se guarda enla base de datos...
        flash[:success] = "Vehicle registered Successfully"
        redirect_to user_vehicles_path(current_user)
    else
        flash[:error] = @vehicle.errors.full_messages.join(',')
        render 'new' #carga de nuevo la pagina
    end
  end

  def vehicle_params
    params.require(:vehicle).permit(:user_id,:model,:year,:vin,:id)
  end

end

class UsersController < ApplicationController
  def show #es el nombre de la vista
    @users = current_user #variable por defecto de devise asigna a users
  end
end

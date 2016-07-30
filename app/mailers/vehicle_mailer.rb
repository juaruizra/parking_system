class VehicleMailer < ApplicationMailer
  default from: 'notifications@parkingsystemjr.com'

  def new_vehicle_email(user)
    @user=user

    if Rails.env=='development' #test local
      @url="http://localhost:3000/users/#{@user.id}/vehicles"
    elsif Rails.env=='production' #desde heroku
      @url="https://parqueort.herokuapp.com/users/#{@user.id}/vehicles"
    end
    mail(to: @user.email, subject:'New Vehicle Registered.')

  end

end

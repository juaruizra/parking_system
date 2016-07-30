# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = { #
  :user_name => 'juaruizra1', #sendgrid
  :password => '1221jarr',  #sendgrid
  :domain => 'parqueort.herokuapp.com', #proyecto heroku
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}

class PassengerMailer < ApplicationMailer
  def welcome_email
    @passenger = params[:passenger]
    @url = 'novaflightbooker.com'
    mail(to: @passenger.email, subject: 'Welcome to Nova Flight Booker!')
  end
end

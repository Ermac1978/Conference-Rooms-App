class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_email(user)
    @user = user
    @url  = 'https://still-atoll-1569.herokuapp.com/'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end

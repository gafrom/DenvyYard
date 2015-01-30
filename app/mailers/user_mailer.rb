class UserMailer < ActionMailer::Base
  default from: "sales@denvyyard.com"


  def welcome_email(customer)
    @customer = customer
    mail(to: 'gafrom@gmail.com', subject: 'New customer!')
  end
end

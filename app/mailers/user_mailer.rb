class UserMailer < ApplicationMailer

  default :from => 'noreply@riversite.com'

  def send_signup_email(user)
    @user = user
    mail(:to => @user.email, :subject => 'Thanks for signing up')
  end

  def send_payment_email(user)
    @user = user
    mail(:to => @user.email, :subject => 'Thanks for paying')
  end
end

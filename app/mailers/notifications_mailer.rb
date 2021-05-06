class NotificationsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications_mailer.welcome.subject
  #
  def welcome(name, email)
    @name = notifications_mailer@email = email
    @greeting = "Hi"

    mail to: email
  end
end

class ContactMailer < ApplicationMailer
  def contact_email(name, email, message)
    @name = name
    @message = message
    mail(to: email, subject: 'Contact Form Message')
  end
end

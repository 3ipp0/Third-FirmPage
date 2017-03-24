class UserMailer < ApplicationMailer
	default from: 'sender@example.com'
	@@admin_email = 'dzinko23@yandex.ua'
 
  def contact_email(email)
    @email = email
    mail(to: @@admin_email, subject: 'Someone write something in contact form')
  end
	
  def request_call(call)
    @call = call
    mail(to: @@admin_email, subject: 'Someone want call')
  end

end

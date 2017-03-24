class UserMailer < ApplicationMailer
	default from: 'contact@firm.com'
	admin_email = 'dzinko23@yandex.ua'
 
  def contact_email
    mail(to: admin_email, subject: 'Someone write something in contact form')
  end
	
  def request_call(call)

    delivery_options = { user_name: "dzinko23@yandex.ua",
                         password: "weXXNBNc5WPh",
                         address: "mail.smtp2go.com",
                         port: "2525" }

    mail(to: admin_email, subject: 'Someone want call', delivery_method_options: delivery_options)

  end

end

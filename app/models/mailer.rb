class Mailer < ActionMailer::Base
  def contact_message(contact) 
    recipients        "ographics@joanoconnor.net"
    subject           "Comments from #{contact.name}"
    from               contact.email
    body               :name => contact.name, :email => contact.email, :message => contact.message 
    content_type "text/html"
  end
end


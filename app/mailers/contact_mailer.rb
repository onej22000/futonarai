class ContactMailer < ApplicationMailer
  
  def contact_mail(contact, customer)
    @contact = contact
    mail to: customer.email, subject: "お問い合わせについて（自動送信）"
  end

end

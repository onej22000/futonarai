class Customer::ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.customer_id = current_customer.id
    if @contact.save
      ContactMailer.contact_mail(@contact, current_customer).deliver
      redirect_to root_path, notice: 'お問い合わせメールを送信しました。'
    else
      render :new
    end
  end


private

  def contact_params
    contact.require(:contact).permit(:name, :content)
  end

end

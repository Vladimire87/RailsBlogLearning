class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      # Redirect to the contacts page or a thank-you page after successful submission
      redirect_to contacts_path, notice: 'Thank you for your message!'
    else
      # If the contact record couldn't be saved, re-render the new form with the errors
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :message)
  end
end

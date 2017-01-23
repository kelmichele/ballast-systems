class ContactController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.valid?
      ContactMailer.new_contact(@contact).deliver unless contact_params[:honey].present?
      redirect_to contact_path, notice: "Your message has been sent."
    else
      flash[:alert] = "An error occurred while delivering this message. All fields are required."
      render :new
    end
  end

  private

    def contact_params
      params.require(:contact).permit(:name, :phone, :email, :content, :honey)
    end

end

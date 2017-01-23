class ContactMailer < ApplicationMailer

   	default from: "Website Contact Form <noreply@ballasttreatmentsystems.com>"
   	default subject: "Inquiry from the Ballast Treatment Systems"

  def new_contact(contact)
    @contact = contact

    mail subject: "Contact Form Inquiry from the Ballast Treatments site"
    mail to: "kelli@hsdesignhouse.com"
  end

end

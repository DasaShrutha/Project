class ContactsController < ApplicationController
	def create
		@contact = Contact.new contact_params
		if @contact.save
			redirect_to home_index_path, notice: "Your request has been received successfully. We'll get back to you shortly"
		else
			redirect_to home_index_path, error: 'Unable to process your request. Please try again later.'
		end
	end

	private

		def contact_params
			params.require(:contact).permit(:name, :email, :message)
		end
end

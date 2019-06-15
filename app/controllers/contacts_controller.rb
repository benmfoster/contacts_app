class ContactsController < ApplicationController

	def index
		@contacts = Contact.all
		render 'index.html.erb'	
	end

	def new
		render 'new.html.erb'
	end

	def create
		@contact = Contact.new(
			first_name: params[:first_name],
			last_name: params[:last_name],
			email: params[:email],
			phone_number: params[:phone_number],
			bio: params[:bio],
			status: true
			)
		if @contact.save
			redirect_to "/contacts/#{contact.id}"
		else
			render json: {errors: @contact.errors.full_messages}, status: :unprocessable_entity
		end
	end

	def show
		@contact = Contact.find(params[:id])
		render 'show.html.erb'		
	end

end

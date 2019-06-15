class Api::ContactsController < ApplicationController



    def contact_action
        @contact = Contact.first
        render 'first_contact.json.jbuilder'
    end

    def index
    	@contacts = Contact.all
        @contacts = @contacts.where("first_name iLike ?", "%#{params[:search]}").order(:id)
    	render "index.json.jbuilder"
    end

    def show
    	@contact = Contact.find(params[:id])
    	render "show.json.jbuilder"
    end

    def create
    	@contact = Contact.new(
			first_name: params[:first_name],
			middle_name: params[:middle_name],
    		last_name: params[:last_name],
    		phone_number: params[:phone_number],
			email: params[:email],
			bio: params[:bio],
			address: params[:address],
            user_id: params[:user_id]
    		)
    	@contact.save
    	render 'create.json.jbuilder'
    end

    def update
    	@contact = Contact.find(params[:id])

		@contact.first_name = params[:first_name] || @contact.first_name
    	@contact.last_name = params[:last_name] || @contact.last_name
    	@contact.phone_number = params[:phone_number] || @contact.phone_number
    	@contact.email = params[:email]	|| @contact.email
        @contact.address = params[:address] || @contact.address
        @contact.user_id = params[:user_id] || @contact.user_id

    	@contact.save
    	render 'show.json.jbuilder'
    end

    def destroy
    	@contact = Contact.find(params[:id])
    	@contact.destroy
    	render json: {message: "Contact successfully destroyed!"}
    end

end

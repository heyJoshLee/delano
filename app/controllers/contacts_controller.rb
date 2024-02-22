      class ContactsController < ApplicationController
    
      before_action :require_login


      def index
        @contacts = Current.user.organization.contacts
      end
    
      def new
        @contact = Contact.new
        @organization = Current.user.organization
      end
    
      def show
        @contact = Contact.find(params[:id])
        @organization = Current.user.organization
      end
    
      def create
        @contact = Contact.new(contact_params)
        @contact.user_id = Current.user.id
        @contact.organization = Current.user.organization
        if @contact.save
          redirect_to organization_contact_path(Current.user.organization, @contact)
        else
          render :new, status: :unprocessable_entity
        end
      end
    
      def edit
        @contact = Contact.find(params[:id])
        @organization = Current.user.organization
      end
    
      def update
        @contact = Contact.find(params[:id])
    
        if @contact.update(contact_params)
          redirect_to organization_contact_path(@contact.organization, @contact)
        else
          render :edit, status: :unprocessable_entity
        end
      end
    
      private
    
      def contact_params
        params.require(:contact).permit(:first_name, :last_name)
      end
    end

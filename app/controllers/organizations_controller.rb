      class OrganizationsController < ApplicationController
    
      before_action :require_login

      def index
        @organizations = Organization.all
      end
    
      def new
        @organization = Organization.new
      end
    
      def show
        @organization = Organization.find(params[:id])
      end
    
      def create
        puts organization_params
        @organization = Organization.new(organization_params)
        if @organization.save
          redirect_to @organization
        else
          render :new, status: :unprocessable_entity
        end
      end
    
      def edit
        @organization = Organization.find(params[:id])
      end
    
      def update
        @organization = Organization.find(params[:id])
    
        if @organization.update(organization_params)
          redirect_to @organization
        else
          render :edit, status: :unprocessable_entity
        end
      end
    
      private
    
      def organization_params
        params.require(:organization).permit(:name)
      end
    end

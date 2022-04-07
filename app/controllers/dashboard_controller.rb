class DashboardController < ApplicationController
	before_action :authenticate_user!

	def index
		@user = current_user
	end

	# placeholder methods.

	def show
		
	end

	def new
		
	end

	def create
		
	end

	def edit

	end

	def update
		
	end

	def destroy
		
	end
	
	private

	def find_subject
		
	end

	def parsed_params
		
	end
end

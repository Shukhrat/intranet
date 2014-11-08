class UsersController < ApplicationController
	

	def index
		@users = User.all
	end
	
	def show
		@users = User.find(params[:id])
	end
	
	def remove
		
	end
	
	def update
		
	end
	
	def edit
		
	end



end
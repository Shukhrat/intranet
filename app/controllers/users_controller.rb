class UsersController < ApplicationController
	

	def index
		@users = User.all
	end
	def show
		
	end
	def remove
		
	end
	def update
		
	end
	def edit
		@user = User.find(params[:id])
	end



end
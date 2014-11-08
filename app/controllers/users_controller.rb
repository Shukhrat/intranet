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
		@user = User.find(params[:id])
		@user.update_attributes(update_params)

		if @user.save!
			redirect_to :back, notice: "Alll good"
		else
			redirect_to :back, notice: "Something went wrong!"
		end
	end
	
	def edit
		@user = User.find(params[:id])
	end

	protected
		def update_params
			params.require(:user).permit(:name, :surname, :lastname, :age)
		end


end
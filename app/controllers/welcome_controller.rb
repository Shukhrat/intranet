class WelcomeController < ApplicationController
	def index
		@users = User.all
		# render "users/index"
	end
	def hello
	end
	def list
		@allstudents = User.all
	end	

	def guest
	end
end
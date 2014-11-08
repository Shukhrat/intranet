class WelcomeController < ApplicationController
	def index
		@users = User.all
	end
	def hello
	end
	def list
		@allstudents = User.all
	end	
end
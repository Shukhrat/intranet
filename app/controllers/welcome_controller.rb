class WelcomeController < ApplicationController
	def index
	end
	def hello
	end
	def list
		@allstudents = User.all
	end	
end
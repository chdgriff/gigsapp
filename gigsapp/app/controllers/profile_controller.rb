class ProfileController < ApplicationController
	def index
		@user = User.all;
	end
	def new

	end
	def create
		@current_user = User.id 

	end
	def edit

	end
	def update

	end
	def show

	end
	def destroy

	end
end

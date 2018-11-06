class ProfileController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]

	def index
		@users = User.all;
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

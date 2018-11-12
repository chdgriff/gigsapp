class ProfileController < ApplicationController
	def index
		@user = User.all;
		 if current_user == nil
      		 redirect_to "/users/sign_in"
        else 
		@currentUser = current_user.id
		@posts = Post.all
	end
end
	def new

	end
	def create

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

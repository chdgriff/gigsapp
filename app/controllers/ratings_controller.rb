class RatingsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @rating = @user.ratings.create(rating_params)
    
    redirect_to user_path(@user)
  end

  def update
  end

  def destroy
  end

  def index
  end

  def show
  end
end

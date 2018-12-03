class RatingsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @rating = @user.ratings.create(rating_params)
    @rating.rater_id = current_user.id
    if @rating.save
      redirect_to @user
    else
      flash.now[:danger] = "Error rating not saved"
    end
  end

  def update
  end

  def destroy
  end

  def index
  end

  def show
  end

  private
    def rating_params
      params.require(:rating).permit(:rating, :comment)
    end
end

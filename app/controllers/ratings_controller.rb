class RatingsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @rating = @user.ratings.create(rating_params)
    @rating.rater_id = current_user.id
    if @rating.save
      redirect_to @user
    else
      flash[:warning] = "Did not save rating"
      redirect_to @user
    end
  end

  def edit
    @rating = Rating.find(params[:id])
    @user = User.find(@rating.user_id)
  end

  def update
    @rating = Rating.find(params[:id])
    if current_user == @rating.rater_id
      if @rating.update(rating_params)
        redirect_to user_path(@rating.user_id)
      else
        render "edit"
      end
    end
  end

  def destroy
    @rating = Rating.find(params[:id])
    @user = User.find(@rating.user_id)
    @rating.destroy
    redirect_to(@user)
  end

  private
    def rating_params
      params.require(:rating).permit(:rating, :comment)
    end
end

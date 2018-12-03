class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @posts = Post.all

    if Rating.where("user_id = ?", @user.id).exists?
      @user.rating_avg = Rating.where("user_id = ?", @user.id).average(:rating)
    else
      @user.rating_avg = nil
    end

  end

  def calc_rating()
    @comments = User.comments
  end
end

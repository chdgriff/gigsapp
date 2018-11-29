class SearchesController < ApplicationController
  def new
    @search = Search.new
  end

  def create
    #@search = Search.create!(params[:search])
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

  private
  def search_params
    params.require(:search).permit(:title, :description, :location, :rate)
  end
end

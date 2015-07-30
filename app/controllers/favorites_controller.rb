class FavoritesController < ApplicationController

    def index
    @favorite = Favorite.all.order(sort: :asc)
  end

  def edit
    @favorite = Favorite.find(params[:id])
    # render layout: false
  end

  def show

   # @favorites = Favorite.where(:user_id) => @user.id)


  end

  def create
    f = Favorite.create favorite_params
    render json: f
  end

  def update
    f = Favorite.find(params[:id])
    f.update favorite_params
    render json: f

  end



   private

  def favorite_params
    params.permit(:url)
  end

end
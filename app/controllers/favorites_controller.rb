class FavoritesController < ApplicationController

  #   def index
  #   @favorite = Favorite.all.order(sort: :asc)
  # end

  def edit
    @favorite = Favorite.find(params[:id])
    # render layout: false
  end

  def index

    @favorites = Favorite.all


  end

  # def create
  #     @user = User.find(params[:id])
  #     f = @user.favorites.create favorite_params

  # end


  def create
    # @user = User.find(params[:id])
    f = Favorite.create favorite_params
    # favorite = Favorite.find("user_id")
    render json: f
  end

  def update
    f = Favorite.find(params[:id])
    f.update favorite_params
    render json: f
  end

  def destroy
    Favorite.find(params[:id]).delete
    redirect_to favorites_path
  end

   private

  def favorite_params
    params.permit(:user_id, :url)
  end

end
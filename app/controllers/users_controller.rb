class UsersController < ApplicationController
   def new
    @user = User.new
   end

   def create
    @user = User.new(user_params)
    if @user.save

      redirect_to login_path
    else
      render 'new'
    end
  end

  def show
    @user = User.find params[:id]
  end

 def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    redirect_to root_path
    else

    end

  end

    def destroy
    log_out
    redirect_to root_url
    end

    def favorite
    @user = User.find params[:id]
    end

private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end


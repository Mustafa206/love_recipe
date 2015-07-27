class SessionsController < ApplicationController

  #login form
  def new
    # render plain: "new session"
  end

  #login action (create a session)
  def create
    # render plain: "create session"
    # render json: params
    user = User.authenticate(params[:user][:email],
      params[:user][:password])

    if user
      #correct email / password
      session[:user_id] = user.id
      flash[:success] = 'You are now logged in.'
      redirect_to sessions_new
    else
      #wrong email or password
      flash[:danger] = 'Invalid email or password.'
      # render :new
      redirect_to login_path
    end

  end

  #logout action (invalidates the session)
  def destroy
    # render plain: "destroy session"
    session[:user_id] = nil
    flash[:info] = "You are logged out."
    redirect_to login_path
  end

end
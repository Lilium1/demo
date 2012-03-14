class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      #user is signed in and gets session variables
      sign_in user
      redirect_to user
    else
      #error occured in signin and message will be displayed
      flash[:error] = 'Invalid email/password'
      render 'new'
    end
  end

  def destroy
  end
end

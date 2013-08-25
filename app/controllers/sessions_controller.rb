class SessionsController < ApplicationController
  def create
    if params[:password] == 'QgIA-9RN9xvjzibKEPG_AoX0XcyzVJ'
      session[:logged_in] = true
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    session[:logged_in] = nil
    redirect_to root_path
  end
end

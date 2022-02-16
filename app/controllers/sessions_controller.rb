class SessionsController < ApplicationController   
  def new   
  end   
  def create
    puts("Trying to login")
    user = User.find_by_email(params[:email])
    if user  
      puts("I found the user")  
      session[:user_id] = user.id   
      redirect_to root_url, notice: 'Logged in!'  
    else
      puts("I didn't find the user")  
      render :new   
    end   
  end   
  def destroy   
    session.clear  
    redirect_to root_url, notice: 'Logged out!'   
  end   
end  
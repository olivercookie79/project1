class SessionController < ApplicationController
  def new

end

   def create
     #see if user exists in the users table database
    user = User.find_by email: params[:email]


    if user.present? && user.authenticate( params[:password] )


      #get rails to create a new key in a special system variable
      #called session this is a variable is rememebered across requests!

      session[:user_id] = user.id

      redirect_to user_path(user.id)

      #this persistent memory acroess requests is implemented su using browser coookies
    else
        flash[:error] ='Invalid email or password!'
        redirect_to login_path #show the form again
        #failed log in
    end
  end

  def destroy
    session[:user_id] =nil # this logs out the user
    redirect_to login_path
  end
end

  def destroy
    session[:user_id] =nil # this logs out the user
    redirect_to login_path
    end

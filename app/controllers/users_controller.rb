class UsersController < ApplicationController

before_action :check_if_logged_in, except: [ :new, :create ]

before_action :check_if_admin, only: [ :index ]



  def new
    @user = User.new

  end

  def create
    @user= User.create user_params #strong params

      if @user.persisted?
        session[:user_id] = @user.id  #log them in automatically
        redirect_to  user_path(@user.id)
      else

      # there was an error so show the signup form again
      #But  we want the form to be prefilled so lets not redirect to the logn form,

      #set up our flash variable with appropriate errors
      #show on the template
      #flash[:errors] = @user.errors.full_messages



      render :new
    end
  end #create

  def show

    redirect_to login_path unless @current_user.present?


    @user = @current_user # always show the logged-in user on this show page
  end

  def edit
  end

  def update
  end

  def destroy

    # Option to Delete  User
  end

  private
  def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end

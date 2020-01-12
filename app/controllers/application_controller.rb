class ApplicationController < ActionController::Base

before_action :fetch_user

  def fetch_user

    #check if session[;user id ]is set and make sure it constians a current user id...if so we wil sert ina instsnce variable here in the cdontroller classit will be availbae to any action of any comntrollermaking it easy to the che logn status of a user anywhere.

    if session[:user_id].present?
      @current_user = User.find_by id: session[:user_id]
    end


    unless @current_user.present?
      session[:user_id] = nil
    end
  end #fetch user

  def  check_if_logged_in
    redirect_to login_path unless @current_user.present?
  end

  def  check_if_admin
    redirect_to login_path unless @current_user.present? && @current_user.admin?
  end

end

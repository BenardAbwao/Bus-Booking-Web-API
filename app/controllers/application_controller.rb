class ApplicationController < ActionController::API
  include ActionController::Cookies
  def create_a_session(id, role)
    session[:user_id] ||= id 
    session[:user_role] ||= role
  end
  #uid and role are methods giving us details on session
  def me
    if (role== "driver")
      render json: Driver.find(uid)
    elsif(role == "admin")
      render json: Admin.find(uid)
    elsif(role == "customer")
      render json: Customer.find(uid)
    else
      render json: {error: "You are not logged in"}, status: :unauthorized
    end
  end

  def uid 
    session[:user_id]
  end
  def role
    session[:user_role]
  end
end

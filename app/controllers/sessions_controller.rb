class SessionsController < ApplicationController
  def create_session
    if(params[:role] == "admin")
      user = Admin.find_by(email: params[:email])
      if user&.authenticate(params[:password])
        create_a_session(user.id, user.role)
       return render json: user, status: :ok
      else
        unauthorized
      end
    elsif(params[:role] == "driver")
      user = Driver.find_by(email: params[:email])
      if user&.authenticate(params[:password])
        create_a_session(user.id, user.role)
       return render json: user, status: :ok
      else
        unauthorized
      end
    elsif(params[:role] == "customer")
      user = Customer.find_by(email: params[:email])
      if user&.authenticate(params[:password])
        create_a_session(user.id, user.role)
        return render json: user, status: :ok
      else
        unauthorized
      end
    else
      unauthorized
    end
  end

  def logout
    session.delete :user_id
    session.delete :user_role
    render json: {message: "Logout success"}
  end

  private
  def unauthorized
    render json: {error: "Wrong credentials. Please check and try again"}, status: :unauthorized
  end

end

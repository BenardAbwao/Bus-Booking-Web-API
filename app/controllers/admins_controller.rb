class AdminsController < ApplicationController
  before_action :authorize
  def create 
    admin = Admin.create!(admin_params)
    render json: admin, status: :created
  end

  def destroy
    admin = find_admin 
    admin.destroy
    head :no_content
  end


  private
  def admin_params 
    params.permit(:name, :email, :role, :password)
  end

  def find_admin
    Admin.find(params[:id])
  end

  def authorize
    render json: {error: "Only admins can can access this functionality"}, status: :unauthorized unless session[:role]=== "admin"
  end

  def render_unprocessable_entity_response(exception)
    render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
  end
end

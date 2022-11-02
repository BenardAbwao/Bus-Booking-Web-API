class CustomersController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  def index
    customers = Customer.page(page).per(per_page)
    render json: customers, status: :ok
  end
  
  def create
      customer = Customer.create!(customer_params)
      render json: customer, status: :ok
  end
  
  def update
    customer = find_customer
    customer.update(customer_params)
    render json: customer, status: :ok
  end

  def show
    customer = find_customer
    render json: customer, status: :ok
  end

  private
  def find_customer
    Customer.find(params[:id])
  end

  def render_unprocessable_entity_response(exception)
    render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
  end

  def render_not_found_response
    return render json: {error: "Customer not found"}, status: :not_found
  end

  def customer_params
    params.permit(:name,:email, :role, :phone_number, :password)
  end
end

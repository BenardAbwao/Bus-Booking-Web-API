class CustomersController < ApplicationController
  def index
    customers = Customer.all
    render json: customers, status: :ok
  end
  
  def create
    if(params[:role]=== "customer")
      customer = Customer.create(customer_params)
      render json: customer, status: :ok
    else
      return null
    end
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

  def customer_params
    params.permit(:name,:email, :role, :phone_number, :password)
  end
end

class CustomersController < ApplicationController
  def create
    if(params[:role]=== customer)
      customer = Customer.create(customer_params)
      render json: customer, status: :ok
    else
      return null
    end
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

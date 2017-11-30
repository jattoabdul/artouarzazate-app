class CustomersController < ApplicationController
  
  # the signup action->view
  def signup
  end
  
  # the signup method -> create a neew user
  def create
    customer = Customer.new(customer_params)
    if customer.save
      session[:customer_id] = customer.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end
end

private

def customer_params
  params.require(:customer).permit(:username, :first_name, :last_name, :email, :address, :password, :password_confirmation)
end
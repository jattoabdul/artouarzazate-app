class SessionsController < ApplicationController
  
  # login action -> view
  def new
  end

  # login method
  def create
    customer = Customer.find_by_email(params[:email])
    # If the customer exists AND the password entered is correct.
    if customer && customer.authenticate(params[:password])
      # Save the customer id inside the browser cookie. This is how we keep the user 
      # logged in when they navigate around our website.
      session[:customer_id] = customer.id
      redirect_to '/'
    else
    # If customer's login doesn't work, send them back to the login form.
      redirect_to '/login'
    end
  end

  # logout method
  def destroy
    session[:customer_id] = nil
    redirect_to '/login'
  end
end
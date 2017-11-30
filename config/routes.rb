Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get '/about' => 'pages#about'

  # These routes will be for signup. The first renders a form in the browse, the second will 
  # Receive the form and create a user in our database using the data given to us by the user.
  get '/signup' => 'customers#signup'
  post '/customers' => 'customers#create'
  # These routes are for showing users a login form, logging them in, and logging them out.
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # These routes are for listing, viewing product and their details
end

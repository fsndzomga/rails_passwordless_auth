Rails.application.routes.draw do
  get 'auth_verification/create'
  get 'auth_verification/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"

  resource :auth, only: %i[show create destroy], controller: :auth
  resource :auth_verification, only: %i[show create], controller: :auth_verification
end

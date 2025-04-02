Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root "landings#index"
  get 'biography', to: 'landings#biography'
  resources :news
  resources :upcoming_events
  resources :projects
  resources :videos
  resources :press
  resources :contacts

  get 'event', to: 'upcoming_events#event'
end

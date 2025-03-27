Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root "landing#index"
  get 'biography', to: 'landing#biography'
  get 'news', to: 'landing#news'
  get 'projects', to: 'landing#projects'
  get 'music', to: 'landing#music'
  get 'video', to: 'landing#video'
  get 'press', to: 'landing#press'
  get 'single-news', to: 'landing#single-news'
  get 'contact', to: 'landing#contact'
  get 'calendar', to: 'landing#calendar'
  
  get 'project/details1', to: 'landing#projectone'
  get 'project/details2', to: 'landing#projecttwo'
  get 'project/details3', to: 'landing#projectthree'
  get 'project/details4', to: 'landing#projectfour'
end

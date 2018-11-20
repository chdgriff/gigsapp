Rails.application.routes.draw do
  resources :job_applications
  devise_for :users, :controllers => {registrations: "users/registrations"}
  resources :users
  resources :posts
  resources :about
  get 'home', :to => "home#index"
  root :to => "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

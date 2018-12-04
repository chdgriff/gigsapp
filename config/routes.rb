Rails.application.routes.draw do
  resources :job_applications
  devise_for :users, :controllers => {registrations: "users/registrations"}

  resources :users do
    resources :ratings
  end

  resources :posts
  resources :about
  resources :searches
  get 'home', :to => "home#index"
  root :to => "home#index"
  get 'job_applicants', :to => "job_applications#show_applicants"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

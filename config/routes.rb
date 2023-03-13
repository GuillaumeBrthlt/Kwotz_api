Rails.application.routes.draw do
  resources :air_conditionnings
  resources :spare_parts
  resources :quote_requests

  resources :cold_rooms
  resources :projects
  resources :supplier_contacts
  resources :suppliers
  resources :user_profiles
  devise_for :users,
             controllers: {
               sessions: 'users/sessions',
               registrations: 'users/registrations',
             }

  get '/member-data', to: 'members#show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

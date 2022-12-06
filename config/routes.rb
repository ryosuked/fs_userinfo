Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1 do
      get '/users/:gid', to: 'users#show'
      post '/user_personals', to: 'user_personals#create'
      patch '/user_personals/:gid', to: 'user_personals#update'
    end
  end
end

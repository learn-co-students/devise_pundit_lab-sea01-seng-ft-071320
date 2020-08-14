Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  get "users/:id", to: "users#show", as: "user"
  get "pages/about", to: "notes#about"
  root "notes#index"
  resources :notes
end

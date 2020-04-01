Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'artists#index'
  resources :artists, :songs

  get "bootstrap", to: "artists#bootstrap"

  # get 'artists', to: 'artists#index'
  # get "artists/:id", to: "artists#show", as: :artist
end

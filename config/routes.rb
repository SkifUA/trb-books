Rails.application.routes.draw do
  resources :books
  resources :genres, except: [:show]
end

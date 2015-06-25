Rails.application.routes.draw do
  root 'zombies#index'

  resources :zombies, only: [:index]
end

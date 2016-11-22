Rails.application.routes.draw do
  root 'home#index'
  get 'albums', to: 'artists#index'
  get 'albums/:id', to: 'albums#show', as: 'album'
end

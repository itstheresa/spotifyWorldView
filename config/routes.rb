Rails.application.routes.draw do

  root 'home#index'
  get 'albums', to: 'albums#index'
  get 'albums/:id', to: 'albums#show', as: 'album'
  get 'countries/index(:market)', to: 'countries#index'
  
end

Rails.application.routes.draw do

  root 'home#index'
  get 'albums', to: 'albums#index'
  get 'albums/:id', to: 'albums#show', as: 'album'
  get 'albums/:countryCode', to: 'albums#countries', as: 'country'
end

Rails.application.routes.draw do
  root to: 'home#index'
  patch 'capture' => 'pokemons#capture', as: 'capture'
  patch '/trainers' => 'pokemons#damage', as: 'damage'
  get 'newpokemon' => 'pokemons#new', as: 'newpokemon'
  post 'createpokemon' => 'pokemons#create', as: 'createpokemon'
  
  devise_for :trainers
  resources :trainers
end

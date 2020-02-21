Rails.application.routes.draw do
  resources :users
  resources :pokemons
  resources :pokemon_teams
  resources :pokemon_joiners
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

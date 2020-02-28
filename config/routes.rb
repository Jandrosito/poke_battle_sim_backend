Rails.application.routes.draw do
  resources :users
  resources :pokemons
  resources :pokemons_team
  resources :pokemons_joiner
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :teams
      resources :pokemons
      resources :trainers
      get 'trainers/name/:name', to: 'trainers#find'
    end
  end
end

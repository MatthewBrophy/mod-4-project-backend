Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :teams
      resources :pokemons
      resources :trainers
      get 'trainers/name/:name', to: 'trainers#find'
      get 'teams/find/:trainer_id', to: 'teams#find'
    end
  end
end

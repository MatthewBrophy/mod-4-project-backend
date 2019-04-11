Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :teams
    end
  end
  namespace :api do
    namespace :v1 do
      resources :trainers
    end
  end
  namespace :api do
    namespace :v1 do
      resources :pokemons
    end
  end

end

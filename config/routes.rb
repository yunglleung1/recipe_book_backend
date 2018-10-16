Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :recipes, only: [:index, :update, :show]
      resources :users, only: [:index, :update, :show]
      resources :recipe_cards, only: [:index, :update, :show, :create]
    end
  end
end

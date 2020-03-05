Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :reviews, only: [:index, :show, :create, :destroy, :update]
    end
  end

  namespace :api do
    namespace :v1 do
      resources :restaurants, only: [:index, :show, :create, :destroy, :update]
    end
  end
end

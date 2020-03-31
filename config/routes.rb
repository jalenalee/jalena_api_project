Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  resources :reviews, only: [:index, :show, :create, :destroy, :update]
  resources :restaurants, only: [:index, :show, :create, :destroy, :update]
end 

Rails.application.routes.draw do
  root to: "users#index"
  
  get "/login", to: "session#new"
  post "/login", to: "session#create"

  get "/signup", to: "users#new"
  post "/signup", to: "users#create"

  get "/logout", to: "session#destroy"
  get "/show", to: "users#show"

end

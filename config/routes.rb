Tunr::Application.routes.draw do
  resources :artists do
    resources :songs, except: [:index, :show]
  end

  resources :users

  #resources :sessions, only: [:new, :create, :destroy]
  get "/login", to: "session#new"
  post "/session", to: "session#create"
  delete "/session", to: "session#destroy"

  root "welcome#index"
end
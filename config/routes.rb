Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :children
      resources :providers
      resources :parents

      post "/login", to: "auth#create"
      post "/parent_login", to: "parent_auth#create"
      get "/dashboard", to: "providers#dashboard"
      get "/parent_dashboard", to: "parents#parent_dashboard"
    end
  end

end

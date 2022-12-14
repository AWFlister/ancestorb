Rails.application.routes.draw do
  resources :people do
    resources :marriages, only: [:index]
  end
  resources :marriages, only: [:create, :show, :update, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

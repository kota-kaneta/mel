Rails.application.routes.draw do
  devise_for :users
  root to: "products#index"
  resources :products do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :purchases, only: [:index, :create]
  end
end


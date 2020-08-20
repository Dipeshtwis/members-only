Rails.application.routes.draw do
  root 'posts#index'
  devise_for :members
  resources :posts, only: [:new, :create, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

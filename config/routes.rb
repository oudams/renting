Rails.application.routes.draw do
  namespace :dashboard do
    get 'home/index'
    root "home#index"

    resources :posts
  end
  devise_for :users
  get 'pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pages#home"
end

Rails.application.routes.draw do
  devise_for :users
    root 'home#index'
    get 'home/about'
    get 'home/ceo'
    get 'home/user'
    get 'home/type'
    get 'home/error'
    get 'home/faqs'
    get 'home/favourite'
    get 'home/blog'

    devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end

    resources :orders

    resources :projs

    resources :themes

    resources :mobapps

    resources :textures

    resources :icons

    resources :webapis

    resources :mores

    resources :scripts

    resources :photos

    resources :updates	
    get 'updates/:id' => 'updates#new'

    resources :contacts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

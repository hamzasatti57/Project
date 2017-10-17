Rails.application.routes.draw do
devise_for :users, :controllers => { registrations: 'registrations' }    
    
    devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end
        get 'users/:id' => 'users#show'
    get 'home/about'
    get 'home/ceo'
    get 'home/user'
    get 'home/type'
    get 'home/error'
    get 'home/faqs'
    get 'home/favourite'
    get 'home/blog'
    root 'home#index'

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

    resources :contacts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

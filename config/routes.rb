Rails.application.routes.draw do
  devise_for :users
    root 'home#index'
    get 'home/about'
    get 'home/ceo'
    get 'home/model'
    get 'home/error'
    get 'home/faqs'
    get 'home/favourite'
    get 'home/blog'

    devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end
    resources :projs

    resources :updates	

    resources :contacts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

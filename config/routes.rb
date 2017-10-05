Rails.application.routes.draw do
  devise_for :users
    root 'home#index'

    get 'home/about'

    resources :updates	

    resources :contacts


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

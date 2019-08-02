Rails.application.routes.draw do

  get 'home/index'

  resources :images, only: [:index, :new, :show, :create]

  resources :clients

  root 'home#index'

  get 'home/sending_mail', to: 'home#sending_mail'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

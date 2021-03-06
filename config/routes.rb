Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  devise_for :organizations


  namespace :account do
    resource :profile, only: [:show, :edit, :update]
    resources :missions, only: [:index]
  end

  resources :associations, only: [:show, :index]

  namespace :organizations do
    resources :missions do
      resources :applications, only: [:show]
    end
  end

  resources :missions, only: [:index, :show] do
    resources :applications, only: [:create]
  end
end

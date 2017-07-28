Rails.application.routes.draw do
  
  root 'matches#index'

  namespace :api do
    namespace :v1 do
      post 'matches', to: 'matches#create'
    end
  end

  resources :matches, only: [:new, :index]
  resources :clips, only: [:create, :index, :new, :show]

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

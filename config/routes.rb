Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'matches', to: 'matches#create'
    end
  end

  get 'matches/new'

  resources :clips, only: [:create, :index, :new, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

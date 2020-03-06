Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/achievements', to: 'goals#achievements', as: 'achievements'
  get '/achievements/:id', to: 'goals#achievement', as: 'achievement'
  resources :goals do
    member do
      get 'duplicate'
    end
    resources :milestones, except: :show
  end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

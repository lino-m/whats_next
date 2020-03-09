Rails.application.routes.draw do
  # get 'dashboard/goals'
  # get 'dashboard/achievements'
  devise_for :users
  root to: 'pages#home'

  get '/dashboard/goals', to: 'dashboard#goals'
  get '/dashboard/achievements', to: 'dashboard#achievements'

  get '/achievements', to: 'goals#achievements', as: 'achievements'
  get '/search', to: 'goals#searched', as: 'search'
  get '/achievements/:id', to: 'goals#achievement', as: 'achievement'
  resources :goals do
    member do
      get 'duplicate'
    end
    resources :milestones, except: :show
  end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

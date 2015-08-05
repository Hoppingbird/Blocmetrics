Rails.application.routes.draw do

  devise_for :users

  get 'welcome/index'

  get 'welcome/about'

  resources :registered_applications

  root to: 'welcome#index'

  namespace :api, defaults: { format: :json } do
    match 'create_event', to: 'events#create', via: [:options]
    match 'events', to: 'events#create', via: [:options]
    resources :events, only: [:create]
  end


end

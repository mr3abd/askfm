Rails.application.routes.draw do

  root 'users#index'

  resources :users #, except: [:destroy]

  resource :session, only: [:new, :create, :destroy]

  resources :questions, except: [:index, :new, :show]

  # get 'sign_up' => 'users#new'
  # get 'log_out' => 'sessions#destroy'
  # get 'log_in' => 'sessions#new'

end

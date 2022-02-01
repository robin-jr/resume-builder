Rails.application.routes.draw do
  get 'experiences/new'
  get 'projects/new'
  root   'home#index'
  get    'edit'    => 'home#edit'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get 'logout'  => 'sessions#destroy'

  get 'signup' => 'users#new'
  post 'signup' => 'users#create'

  resources :profiles , only: [:update,:show]
  resources :educations , only: [:new]
  resources :experiences , only: [:new]
  resources :projects , only: [:new]
end

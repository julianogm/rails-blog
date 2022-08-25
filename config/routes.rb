Rails.application.routes.draw do
  resources :topics, only: [:index, :show]

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}

  get 'about', to: 'pages#about'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  mount ActionCable.server => '/cable'
  root to: 'blogs#index'
end

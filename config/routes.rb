Rails.application.routes.draw do
  devise_for :super_admins
  resources :choices
  resources :elections
  devise_for :electors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#index'
end

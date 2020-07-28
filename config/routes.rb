Rails.application.routes.draw do
  root 'users#index'
  
  resources :users do
    resources :notes, shallow: true
  end
end

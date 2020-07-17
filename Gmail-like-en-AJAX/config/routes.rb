Rails.application.routes.draw do
  resources :emails
  root 'emails#index'
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  get '/', to: 'static_pages#home'

  get 'home', to: 'static_pages#home'

  get 'team', to: 'static_pages#team'

  get 'contact', to: 'static_pages#contact'

  get 'welcome', to: 'static_pages#welcome'

  get 'welcome/:first_name', to: 'static_pages#welcome'

  get 'home/:id', to: 'static_pages#gossip', as: 'gossip'

  get 'user/:id', to: 'static_pages#user', as: 'user'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

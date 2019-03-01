Rails.application.routes.draw do
  get 'home/index'
  resources :event_comments
  resources :events
  resources :event_categories
  resources :event_types
  root :to => 'home#index'
  get 'landing' => 'landing#index'
  get 'template' => 'template#index'
  get 'components' => 'components#index'
  get 'tutorial' => 'tutorial#index'
  get 'profile' => 'profile#index'
  get 'welcome' => 'welcome#index'
  get 'explore' => 'explore#index'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get    '/mentions'      => 'pages#mentions'
  post    '/rails/action_mailbox/postmark/inbound_emails'      => 'pages#home'
  resources :amis, only: [:new, :create, :index]
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

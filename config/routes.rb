Rails.application.routes.draw do
  devise_for :users
  root to: 'home#show'
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
end

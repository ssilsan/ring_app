Rails.application.routes.draw do
  resources :trainings
  get '/' => 'home#top'
  devise_for :users
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

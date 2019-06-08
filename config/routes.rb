Rails.application.routes.draw do
  root 'application#top'
  get 'sessions/new'
  get '/signup', to: 'users#new'
  get 'questions/new/:id',to:'questions#new'
  get 'questions/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :questions
end

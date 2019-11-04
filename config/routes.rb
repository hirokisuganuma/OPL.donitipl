Rails.application.routes.draw do
  get 'hoge/show',as:'hogehoge'
  root 'application#top'
  get 'sessions/new'
  get '/signup', to: 'users#new'
  get 'questions/new/:id',to:'questions#new'
  get 'questions/index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  post 'answer/:id',to:'answers#create',as:'question_answer'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :questions
  resources :answers
end

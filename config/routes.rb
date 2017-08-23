Rails.application.routes.draw do
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/signup', to: 'users#new'

  get 'welcome/home'

  get 'users/:id/dashboard', to: 'users#dashboard', as: 'dashboard'

  root 'welcome#home'

  post '/events/:id', to: 'events#addevent', as: 'addevent'
  post '/users/:id', to: 'users#deleteevent', as: 'deleteevent'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :events, :categories, :locations, :the_dates, :users, :friendships

  # root
end

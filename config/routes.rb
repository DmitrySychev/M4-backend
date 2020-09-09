Rails.application.routes.draw do
  resources :events
  resources :user_events
  get 'me/events', to: 'events#my_events'
  # delete 'me/event/:id', to: 'user_events#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      get 'me/recommendations', to: 'users#recommendations'
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end

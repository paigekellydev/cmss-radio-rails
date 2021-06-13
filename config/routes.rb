Rails.application.routes.draw do
  resources :song_playlists
  resources :playlists
  resources :songs
  resources :artists
  resources :genres
  resources :users

  post '/login', to: 'users#login'
  get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

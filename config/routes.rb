Rails.application.routes.draw do
  resources :song_playlists
  resources :playlists
  resources :songs
  resources :artists
  resources :genres
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

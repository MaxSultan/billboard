Rails.application.routes.draw do
  # get 'lists/index'
  # get 'lists/new'
  # get 'lists/edit'
  # get 'lists/show'
  # get 'artists/index'
  # get 'artists/new'
  # get 'artists/edit'
  # get 'artists/show'
  # get 'songs/index'
  # get 'songs/new'
  # get 'songs/edit'
  # get 'songs/show'

  root 'lists#index'

  resources :lists do
    resources :songs
  end 

  resources :artists do 
    resources :songs
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

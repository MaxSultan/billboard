Rails.application.routes.draw do
  get 'lists/index'
  get 'lists/new'
  get 'lists/edit'
  get 'lists/show'
  get 'artists/index'
  get 'artists/new'
  get 'artists/edit'
  get 'artists/show'
  get 'songs/index'
  get 'songs/new'
  get 'songs/edit'
  get 'songs/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

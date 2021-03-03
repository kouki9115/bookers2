Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to:'homes#top'

resources :books, onry: [:new, :creare, :index, :show, :destroy]
resources :users, onry: [:new, :creare, :index, :show, :edit, :destroy]
resources :profile_images, only: [:new, :create, :index, :show, :destroy]
end

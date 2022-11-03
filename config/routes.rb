Rails.application.routes.draw do
  # get 'comments/index'
  # get 'comments/show'
  # get 'comments/new'
  # get 'comments/create'
  # get 'comments/edit'
  # get 'comments/update'
  # get 'comments/destroy'
  # get 'cities/index'
  # get 'cities/show'
  # get 'cities/new'
  # get 'cities/create'
  # get 'cities/edit'
  # get 'cities/update'
  # get 'cities/destroy'
  get '/', to: 'house#home'
  get '/contact', to: 'house#contact'
  get '/team', to: 'house#team'

resources :gossips do
  resources :comments
end

resources :users
resources :cities
resources :sessions, only: [:new, :show, :create, :destroy]

end

Rails.application.routes.draw do
  get '/data', to: 'data#create'
  post '/data', to: 'data#create'

  root to: 'data#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

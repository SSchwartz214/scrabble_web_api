Rails.application.routes.draw do
  root "welcome#index"

  post '/search', to: 'search#index'
  # get '/search', to: 'search#show'
end

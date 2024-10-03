Rails.application.routes.draw do
  get '/application', to: 'applications#index'
  get '/application/:id', to: 'applications#show'
end

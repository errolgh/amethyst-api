require 'resque/server'

Rails.application.routes.draw do
  post 'report', to: 'reports#create'
  get 'report/:id', to: 'reports#show'

  mount Resque::Server, at: '/resque'
end

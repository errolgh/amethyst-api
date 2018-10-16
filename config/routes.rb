require 'resque/server'

Rails.application.routes.draw do
  post 'reports', to: 'reports#create'
  get 'reports/:id', to: 'reports#show'
  get 'report', to: 'reports#old_show'

  mount Resque::Server, at: '/resque'
end

Cvapp::Application.routes.draw do
  root 'site#index'

  get  'login' => 'session#new', as: :login
  post 'login' => 'session#create'
end

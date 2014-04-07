Cvapp::Application.routes.draw do
  root 'site#index'

  get 'login' => 'session#new', as: :login
end

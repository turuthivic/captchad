Rails.application.routes.draw do
  root 'posts#index'
  match ':controller(/:action(/:id))', via: [:get,:post]
  resources :posts
end

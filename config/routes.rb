Rails.application.routes.draw do
  root to: 'pages#home'
  resources :author
  resources :book
end

Rails.application.routes.draw do
  get 'api/products', to: 'products#index'

  root to: 'pages#index'
end

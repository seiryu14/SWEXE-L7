Rails.application.routes.draw do
  get 'top/main'
  root 'top#main'
  resources :products
  resources :carts, only: [:show]
  resources :cart_items, only: [:create, :destroy]

end

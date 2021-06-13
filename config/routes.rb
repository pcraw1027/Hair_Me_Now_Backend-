Rails.application.routes.draw do
  resources :purchase_comment_ratings
  resources :products
  resources :product_purchases
  resources :salons
  resources :chairs
  resources :services
  resources :prices
  resources :appointment_comment_ratings
  resources :appointments
  resources :stylists
  resources :customers
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

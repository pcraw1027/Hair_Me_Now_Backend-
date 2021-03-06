Rails.application.routes.draw do
  resources :appointment_services
  resources :stylist_calendars
  resources :stylist_availabilities
  resources :social_sites
  resources :purchase_reviews
  resources :products
  resources :product_purchases
  resources :salons
  #resources :chairs
  resources :services
  resources :prices
  resources :appointment_reviews
  resources :appointments
  resources :stylists
  resources :customers
  #resources :users, only: [:create, :index, :show]
  #post "/login", to: "users#login"
  get "/stylist/logged_in/:user_id", to: "stylists#user_stylist"
  get "/appointments/stylist/:stylist_id", to: "appointments#stylist_appointments"
  get "/prices/stylist/:stylist_id", to: "prices#stylist_prices"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

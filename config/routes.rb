Rails.application.routes.draw do

  get 'order_history' => 'orders#order_history'

  post 'add_to_cart' => 'cart#add_to_cart'

  post 'delete_from_cart' => 'cart#delete_from_cart'

  post 'order_complete' => 'cart#order_complete'

  post 'cancel_checkout' => 'cart#cancel_checkout'

  get 'view_order' => 'cart#view_order'

  get 'checkout' => 'cart#checkout'

  devise_for :users
  root 'storefront#all_items'

  get 'categorical' => 'storefront#items_by_category'

  get 'branding' => 'storefront#items_by_brand'

  resources :categories
  resources :products


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

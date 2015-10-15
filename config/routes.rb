Spree::Core::Engine.routes.draw do
  # Add your extension routes here

  namespace :admin do
    resources :products do
      resources :product_order_info_items, only: [:index]
    end
  end
end

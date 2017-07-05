Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products do
    member do
      get 'description'
      get 'inventory'
    end
  end
end

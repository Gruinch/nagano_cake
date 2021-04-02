Rails.application.routes.draw do

  devise_for :customers, controllers: {
    sessions:      'customers/sessions',
    passwords:     'customers/passwords',
    registrations: 'customers/registrations'
  }

  devise_for :admins, controllers: {
    sessions:      'admin/sessions',
    passwords:     'admin/passwords',
    registrations: 'admin/registrations',
  }

    get '/' => 'homes#top', as: 'homes/top'
    get '/about' => 'homes#about', as: 'homes/about'
    resources :customers, only: [:show, :edit, :update, :unsubscribe, :withdraw]
    resources :items, only: [:index, :show]
    resources :addresses, only: [:index, :edit, :update, :destroy]
    resources :cart_items, only: [:index, :update, :destroy, :destroy_all, :create]
    resources :orders

  namespace :admin do
    get '/' => 'homes#top', as: '/homes/top'
    resources :customers, only: [:index, :show, :edit, :update]
    resources :items
    resources :genres, only: [:index, :create, :edit, :update]
    get 'orders/show'
    get 'orders/update'
    get 'order_details/update'
  end
end

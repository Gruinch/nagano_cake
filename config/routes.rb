Rails.application.routes.draw do
    scope module: :public do
    root 'homes#top'
    get '/about' => 'homes#about', as: '/homes/about'

    devise_for :customers, controllers: {
    sessions:      'public/customers/sessions',
    passwords:     'public/customers/passwords',
    registrations: 'public/customers/registrations'
  }
    resources :customers
    resources :items, only: [:index, :show]
    resources :addresses, only: [:index, :edit, :update, :destroy]
    resources :cart_items, only: [:index, :update, :destroy, :destroy_all, :create]
    resources :orders

    end

    namespace :admin do
    get '/' => 'homes#top', as: '/homes/top'
    resources :customers, only: [:index, :show, :edit, :update]
    resources :items
    resources :genres, only: [:index, :create, :edit, :update]
    resources :orders, only: [:show, :index, :update]
    get 'order_details/update'
    end

  devise_for :admins, controllers: {
    sessions:      'admin/sessions',
    passwords:     'admin/passwords',
    registrations: 'admin/registrations',
  }


end

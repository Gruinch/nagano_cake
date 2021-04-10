Rails.application.routes.draw do
    root 'public/homes#top' 
    get '/about' => 'public/homes#about', as: 'public/hom/about'

    namespace :admin do
    get '/' => 'homes#top', as: '/homes/top'
    resources :customers, only: [:index, :show, :edit, :update]
    resources :items
    resources :genres, only: [:index, :create, :edit, :update]
    resources :orders, only: [:show, :index, :update]
    get 'order_details/update'
    end


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

    resources :customers, only: [:show, :edit, :update, :unsubscribe, :withdraw]
    resources :items, only: [:index, :show]
    resources :addresses, only: [:index, :edit, :update, :destroy]
    resources :cart_items, only: [:index, :update, :destroy, :destroy_all, :create]
    resources :orders

end

Rails.application.routes.draw do
  namespace :public do
    get 'addresses/index'
    get 'addresses/edit'
    get 'addresses/update'
    get 'addresses/destroy'
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

  namespace :public do
    resources :orders
  end

  namespace :admin do
    get '/' => 'homes#top', as: '/homes/top'
    resources :items
    get 'orders/show'
    get 'orders/update'

  end


end

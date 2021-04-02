Rails.application.routes.draw do
  namespace :admin do
    get 'orders/show'
    get 'orders/update'
  end
  namespace :admin do
    get '/' => 'homes#top', as: '/homes/top'
    resources :items
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

end

Rails.application.routes.draw do
  scope module: :public do
    root 'homes#top'
    get '/about' => 'homes#about'

  
    resource :customers, :except => [:new, :create, :show] do
      get '/mypage' => 'customers#show'
     collection do
      get '/confirm_unsubscribe' => 'customers#unsubscribe', as: '/confirm_unsubscribe'
      patch '/withdraw' => 'customers#withdraw', as: '/withdraw'
      patch '/' => 'customers#update'
    end
    end
    devise_for :customers, controllers: {
    sessions:      'public/customers/sessions',
    passwords:     'public/customers/passwords',
    registrations: 'public/customers/registrations',
  }
    resources :items, only: [:index, :show]
    resources :addresses, only: [:index, :create, :edit, :update, :destroy]
    resources :cart_items do
      collection do
        delete 'destroy_all'
      end
    end
    resources :orders do
      collection do
      post '/confirm' => 'orders#confirm'
      patch '/' => 'orders#create'
      get '/complete' => 'orders#complete'
    end
    end
    resource :order_details, only: [:create]
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

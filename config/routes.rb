Rails.application.routes.draw do
  get 'confimations/new'
  devise_for :customers, controllers: {
    registrations: 'customers/registrations',
    sessions: 'customers/sessions'
  }

root 'homes#top'

 get 'top' =>'homes#top'
 get 'about' =>'homes#about'
 get '/search', to: 'searchs#search'

 resources :items
 resources :addresses, only: [:index, :create, :destroy, :edit, :update]
 resources :orders, only: [:new, :check, :complete, :create, :show, :index]
 delete 'cart_items',to: 'cart_items#destroy_all'
 resources :cart_items, only: [:index, :destroy, :create, :update]
 resources :sessions, only: [:new, :create, :destroy]
 resources :registrations, only: [:create]
 resources :customers do
     delete 'unsubscribe'
 end
 #resources :homes, only: [:top, :about]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

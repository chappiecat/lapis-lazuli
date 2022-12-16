

Rails.application.routes.draw do
  get 'confimations/new'
  devise_for :customers, controllers: {
    registrations: 'customers/registrations',
    sessions: 'customers/sessions'
  }

  devise_scope :customer do
    root 'devise/sessions#new'
  end

  get 'addresses/index'
  get 'addresses/edit'
  get 'addresses/create'
  get 'addresses/update'
  get 'addresses/destroy'
  get 'orders/new'
  get 'orders/check'
  get 'orders/complete'
  get 'orders/create'
  get 'orders/index'
  get 'orders/show'
  get 'cart_items/index'
  get 'cart_items/update'
  get 'cart_items/destroy'
  get 'cart_items/destroy_all'
  get 'cart_items/create'
  get 'sessions/new'
  get 'sessions/creat'
  get 'sessions/destroy'
  get 'registrations/creat'
  get 'items/new'
  get 'items/index'
  get 'items/show'
  get 'items/edit'
  get 'customers/new'
  get 'customers/index'
  get 'customers/show'
  get 'customers/edit'

  get 'homes/top'
  get 'homes/about'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

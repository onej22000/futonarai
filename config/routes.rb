Rails.application.routes.draw do


  # 顧客用
  # URL /customers/sign_in ...
  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "customer/registrations",
    sessions: 'customer/sessions'
  }

  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }


  root to: 'homes#top'
  get '/about' => 'homes#about'




  namespace :customer do
    resources :service, only: [:index, :show]
    resources :customers, only: [:show, :edit, :update]
    resources :reservations
    resources :contacts, only: [:new, :create]
    post 'contacts/new', to: 'contacts#create'
  end

  namespace :admin do
    resources :service
    resources :customers, only: [:index, :show, :edit, :update]
    resources :reservations, only: [:index, :show]
    get "search" => "searches#search"
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

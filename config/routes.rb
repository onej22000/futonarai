Rails.application.routes.draw do

  root to: 'homes#top'
  get '/about' => 'homes#about'
  devise_for :admin

  # 顧客用
  # URL /customers/sign_in ...
  devise_for :customers, controllers: {
  registrations: "customer/registrations",
  sessions: 'customer/sessions'
  }

  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, controllers: {
  sessions: "admin/sessions"
  }


  namespace :customer do
    resources :service, only: [:index, :show]
    resources :customers, only: [:show, :edit]
  end

  namespace :admin do
    resources :service
    resources :customers, only: [:index, :show, :edit, :update]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

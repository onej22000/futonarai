Rails.application.routes.draw do
  root to: 'homes#top'
  get '/about' => 'homes#about'
  devise_for :customers
  devise_for :admin

  namespace :customer do
    resources :service, only: [:index, :show]
  end

  namespace :admin do
    resources :service
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

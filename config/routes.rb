Rails.application.routes.draw do
  root to: "pages#index"
  get 'pages/index'
  get 'pages/show'
  resources :messages, only: [:index, :show, :create, :destroy]
  devise_for :users
  devise_scope :user do
    delete '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

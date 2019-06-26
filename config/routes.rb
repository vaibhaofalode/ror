Rails.application.routes.draw do
  get 'home/index'
  # devise_for :users
  authenticated :user do
    root :to => 'home#index'
  end
  devise_scope :user do
    root to: "users/sessions#new"
  end
  #   root to: "devise/sessions#new"
  # root to: "users/sessions#new"

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    sessions: 'users/registrations'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
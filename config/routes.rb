Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  authenticated :user do
    root :to => 'home#index'
  end
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
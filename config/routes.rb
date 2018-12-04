Rails.application.routes.draw do
<<<<<<< HEAD
  get 'simple_pages/index'
  root 'simple_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=======
  devise_for :user_orgs
  resources :organizations

  root 'static_pages#index'

>>>>>>> e8a78154a7098735df2e13a1e43a76d9c75aeefb
end

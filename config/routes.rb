Rails.application.routes.draw do
  devise_for :user_orgs
  resources :organizations
  resources :quizzes

  root 'static_pages#index'

end

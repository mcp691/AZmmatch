Rails.application.routes.draw do
  devise_for :user_orgs
  resources :organizations

  root 'static_pages#index'
  get 'static_pages/quiz'

end

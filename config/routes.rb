Rails.application.routes.draw do
  devise_for :user_orgs
  resources :organizations do
    member do
      put :claim
    end
  end
  resources :quizzes

  root 'static_pages#index'

end

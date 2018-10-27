Rails.application.routes.draw do
  resources :organizations

  root 'static_pages#index'

end

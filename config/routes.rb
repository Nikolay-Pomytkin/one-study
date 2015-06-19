Rails.application.routes.draw do
  devise_for :users

  root "pages#welcome"

  resources :guides

  resources :courses

  resources :teachers

  resources :schools

  resources :pages

end

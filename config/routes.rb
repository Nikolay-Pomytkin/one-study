Rails.application.routes.draw do
  devise_for :users

  root "pages#welcome"

  resources :guides

  resources :courses

  resources :teachers

  resources :schools

  resources :pages

  match '/about' => 'pages#about', via: :all

  match '/welcome' => 'pages#welcome', via: :all

  match '/contact_us' => 'pages#contact_us', via: :all

end

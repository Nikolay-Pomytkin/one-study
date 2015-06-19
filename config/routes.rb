Rails.application.routes.draw do

  #Authentication and profile page
  devise_for :users
  get 'users/:id' => 'users#show'

  #Home page
  root "pages#welcome"

  resources :guides
  resources :courses
  resources :teachers
  resources :schools
  resources :pages

  #STATIC PAGES
  match '/about' => 'pages#about', via: :all
  match '/welcome' => 'pages#welcome', via: :all
  match '/contact_us' => 'pages#contact_us', via: :all

end

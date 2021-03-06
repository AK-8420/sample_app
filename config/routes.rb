Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/home',    to: 'static_pages#home'
  # => StaticPages#homeと同じ
  get  '/help',    to: 'static_pages#help'
  # => StaticPages#help
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  resources :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root 'application#hello'
end

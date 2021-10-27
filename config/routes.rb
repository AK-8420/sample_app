Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'
  # => StaticPages#homeと同じ
  get 'static_pages/help'
  # => StaticPages#help
  get 'static_pages/about'
  # GETリクエスト送られたときに反応
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root 'application#hello'
end

Rails.application.routes.draw do

  devise_for :users
  # Root URL
  root 'pages#index'

  # Routes to pages
  get 'contribute' => 'pages#contribute'
  get 'about' => 'pages#about'
  get 'faq' => 'pages#faq'
  get 'user/:id' => 'pages#contribuicoes'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

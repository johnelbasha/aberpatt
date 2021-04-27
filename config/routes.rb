Rails.application.routes.draw do
  root 'pages#home'
  get '/why', to: 'pages#why'
  get '/prices', to: 'pages#prices'
  get '/contact', to: 'pages#contact'
end

Rails.application.routes.draw do
  get 'hmhrpractices/back'
  get 'hmhrpractices/show'
  get 'hmhrpractices/new'
  get 'hmhrpractices/edit'
  root 'practices#index'
  # post 'hmhrpractices/confirm' => 'hmhrpractices#confirm'
  post 'hmhrpractices/back'
  resources :practices
  resources :hmhrpractices

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

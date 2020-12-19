Rails.application.routes.draw do
  root 'practices#index'
  resources :practices
  resources :hmhr
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

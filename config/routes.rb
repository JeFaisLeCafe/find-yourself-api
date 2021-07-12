Rails.application.routes.draw do
  resources :specialisations
  resources :answers
  resources :poles
  resources :questions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

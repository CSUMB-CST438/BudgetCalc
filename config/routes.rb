Rails.application.routes.draw do
  resources :budgets
  root "budgets#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

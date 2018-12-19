Rails.application.routes.draw do
  resources :dogs
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/ordered", to: 'dogs#ordered', as: 'ordered'
end

Rails.application.routes.draw do
  resources :events
  resources :pets
  resources :owners
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

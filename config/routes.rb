Rails.application.routes.draw do
  resources :toolings
  resources :parts
  devise_for :supplier_users
  devise_for :honda_users
  resources :events
  resources :projects
  resources :maker_layouts
  resources :plants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

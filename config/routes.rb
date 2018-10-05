Rails.application.routes.draw do
  root controller: :items, action: :index
  resources :items, :recipes
end

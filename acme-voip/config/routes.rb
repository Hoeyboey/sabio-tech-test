Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :customers, [:index, :show, :create, :edit, :destroy]
  resources :devices, [:index, :show, :create, :edit]


end

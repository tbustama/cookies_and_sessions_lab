Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'products#index', as: :home
  resource :products, only: [:index]
  post "products/add", as: 'products#add', as: 'add'

end

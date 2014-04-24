Groceryapp::Application.routes.draw do

  root 'grocerylists#index'

  resources :grocerylists

end

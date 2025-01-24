# Rails.application.routes.draw do
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
#   # Can be used by load balancers and uptime monitors to verify that the app is live.
#   get "up" => "rails/health#show", as: :rails_health_check

#   # Defines the root path route ("/")
#   # root "posts#index"
# end

Rails.application.routes.draw do
  resources :products, only: [:index, :show, :create, :update, :destroy]
end

Rails.application.routes.draw do
  # Outras rotas...

  # Rota para criar um usuário
  post 'users', to: 'users#create'

  # Rota para editar um usuário
  put 'users/:id', to: 'users#update'
end

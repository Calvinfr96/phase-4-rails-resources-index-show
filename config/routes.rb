Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #Alternively, you can use: resources :birds, only: [:index, :show]
  get '/birds', to: 'birds#index'
  get '/birds/:id', to: 'birds#show'
end

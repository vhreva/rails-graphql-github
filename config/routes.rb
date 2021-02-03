Rails.application.routes.draw do
  resources :repositories, param: :username, only: [:show]
end

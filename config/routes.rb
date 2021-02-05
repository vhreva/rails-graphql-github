Rails.application.routes.draw do
  resource :repository, only: [:index, :show]
  
  root to: 'repositories#index'
end

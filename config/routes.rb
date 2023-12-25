Rails.application.routes.draw do
  root 'instances#new'
  resources :instances, only: %i[index show new create]
end

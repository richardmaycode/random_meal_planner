Rails.application.routes.draw do
  root "generator#index"

  resources :generator, only: %i[index create]
end

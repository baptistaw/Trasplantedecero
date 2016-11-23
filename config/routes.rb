Rails.application.routes.draw do
  devise_for :users
  resources :patients do
  	resources :corevaluations
  end
  root "patients#index"
end

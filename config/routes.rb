Rails.application.routes.draw do
  devise_for :users
  resources :patients do
  	resources :corevaluations
  end

  get 'static_pages/protocolos', to: "static_pages#protocolos"

  get 'static_pages/home', to: "static_pages#about"

  get 'static_pages/help', to: "static_pages#help"

  get 'static_pages/about', to: "static_pages#about"

  get 'static_pages/help', to: "static_pages#help"

  get 'patients/new', to: "patients#new"



  root to: "static_pages#home"

#  root "patients#index"

end

  
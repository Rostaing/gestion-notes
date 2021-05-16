Rails.application.routes.draw do
  # resources :users
  # Routes for Rails API

  # Version 2
  # resources :users do
  #   collection do
  #     post 'login'
  #   end
  # end

  # Version 1
  # resources :sessions, only: [:create]
  # resources :registrations, only: [:create]
  # delete :logout, to: "sessions#logout"
  # get :logged_in, to: "sessions#logged_in"

  # Version 3
  resource :users, only: [:create]
  post "/login", to: "users#login"
  # get "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
  get "/check_user", to: "users#check_user"

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :systemes
      resources :filieres
      resources :clas
      resources :matieres
      resources :anneeacademiques
      resources :countries
      resources :evaluations
      resources :etudiants
      resources :mentions
      resources :notes
      resources :bulletins
      resources :lignebulletins
      resources :roles
      resources :permissions
      resources :role_users
      resources :permission_users
      resources :ens_clas_matieres
      get "/matiere_count", to: "matieres#matiere_count"
      get "/etudiant_count", to: "etudiants#etudiant_count"
      get "/classe_count", to: "clas#classe_count"
      get "/evaluation_count", to: "evaluations#evaluation_count"
      get "/moyenne_etu/:id", to: "bulletins#moyenne_etu"
    end
    namespace :v2 do
      resources :anneeacademiques
      resources :notes
      resources :users
      # get '/show/:id', to: 'users#show'
    end
  end
end

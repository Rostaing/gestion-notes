Rails.application.routes.draw do
  # Routes for Rails API
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :systemes
      resources :filieres
      resources :clas
      resources :matieres
      resources :anneeacademiques
      resources :evaluations
      resources :countries
      resources :enseignants
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
    end
  end
end

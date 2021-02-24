Rails.application.routes.draw do
  # Routes for Rails API
  namespace :api, defaults: {format: :json} do
    namespace :v1 do  
      resources :users
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

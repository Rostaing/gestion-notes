Rails.application.routes.draw do
  # Routes for Rails API
  resources :users do
    collection do
      post 'login'
    end
  end

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
    end
    namespace :v2 do
      resources :anneeacademiques
      resources :notes
      resources :users
    end
  end
end

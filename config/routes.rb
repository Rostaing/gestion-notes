Rails.application.routes.draw do
  # devise_for :users
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :users
      devise_scope :user do
        
        # post "sign_up", to: "registrations#create"
        post "sign_in", to: "sessions#create"
      end
      resources :systemes
      resources :filieres
      resources :clas
      resources :matieres
      resources :clas_matieres
      resources :anneeacademiques
      resources :typeevaluations
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

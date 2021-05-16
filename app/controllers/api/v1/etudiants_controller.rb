class Api::V1::EtudiantsController < ApplicationController
  before_action :set_etudiant, only: [:show, :update, :destroy]

  # GET /etudiants
  def index
    @etudiants = Etudiant.all.order(created_at: :desc)

    render json: @etudiants
  end

  def etudiant_count
    @total_etudiant = Etudiant.count
    render json: @total_etudiant
  end

  # GET /etudiants/1
  def show
    render json: @etudiant
  end

  # POST /etudiants
  def create
    @etudiant = Etudiant.new(etudiant_params)

    if @etudiant.save
      render json: @etudiant, status: :created, location: api_v1_etudiant_url(@etudiant)
    else
      render json: @etudiant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /etudiants/1
  def update
    if @etudiant.update(etudiant_params)
      render json: @etudiant
    else
      render json: @etudiant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /etudiants/1
  def destroy
    @etudiant.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etudiant
      @etudiant = Etudiant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def etudiant_params
      params.require(:etudiant).permit(:matricule, :nom, :prenom, :sexe, :email, :telephone, :bp, :date_naissance, :lieu_naissance, :rue, :quartier, :cla_id, :country_id, :anneeacademique_id, :deleted_at)
    end
end

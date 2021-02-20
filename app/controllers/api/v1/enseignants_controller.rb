class Api::V1::EnseignantsController < ApplicationController
  before_action :set_enseignant, only: [:show, :update, :destroy]

  # GET /enseignants
  def index
    @enseignants = Enseignant.all.order(created_at: :desc)

    render json: @enseignants
  end

  # GET /enseignants/1
  def show
    render json: @enseignant
  end

  # POST /enseignants
  def create
    @enseignant = Enseignant.new(enseignant_params)

    if @enseignant.save
      render json: @enseignant, status: :created, location: api_v1_enseignant_url(@enseignant)
    else
      render json: @enseignant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /enseignants/1
  def update
    if @enseignant.update(enseignant_params)
      render json: @enseignant
    else
      render json: @enseignant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /enseignants/1
  def destroy
    @enseignant.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enseignant
      @enseignant = Enseignant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def enseignant_params
      params.require(:enseignant).permit(:matricule, :nom, :prenom, :sexe, :email, :telephone, :bp, :date_naissance, :lieu_naissance, :rue, :quartier, :country_id, :deleted_at)
    end
end

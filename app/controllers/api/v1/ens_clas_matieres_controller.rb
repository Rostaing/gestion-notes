class Api::V1::EnsClasMatieresController < ApplicationController
  before_action :set_ens_clas_matiere, only: [:show, :update, :destroy]

  # GET /ens_clas_matieres
  def index
    @ens_clas_matieres = EnsClasMatiere.all.order(created_at: :desc)

    render json: @ens_clas_matieres
  end

  # GET /ens_clas_matieres/1
  def show
    render json: @ens_clas_matiere
  end

  # POST /ens_clas_matieres
  def create
    @ens_clas_matiere = EnsClasMatiere.new(ens_clas_matiere_params)

    if @ens_clas_matiere.save
      render json: @ens_clas_matiere, status: :created, location: api_v1_ens_clas_matiere_url(@ens_clas_matiere)
    else
      render json: @ens_clas_matiere.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ens_clas_matieres/1
  def update
    if @ens_clas_matiere.update(ens_clas_matiere_params)
      render json: @ens_clas_matiere
    else
      render json: @ens_clas_matiere.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ens_clas_matieres/1
  def destroy
    @ens_clas_matiere.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ens_clas_matiere
      @ens_clas_matiere = EnsClasMatiere.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ens_clas_matiere_params
      params.require(:ens_clas_matiere).permit(:user_id, :cla_id, :matiere_id, :anneeacademique_id)
    end
end

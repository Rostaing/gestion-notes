class ClasMatieresController < ApplicationController
  before_action :set_clas_matiere, only: [:show, :update, :destroy]

  # GET /clas_matieres
  def index
    @clas_matieres = ClasMatiere.all.order(created_at: :desc)

    render json: @clas_matieres
  end

  # GET /clas_matieres/1
  def show
    render json: @clas_matiere
  end

  # POST /clas_matieres
  def create
    @clas_matiere = ClasMatiere.new(clas_matiere_params)

    if @clas_matiere.save
      render json: @clas_matiere, status: :created, location: api_v1_clas_matiere_url(@clas_matiere)
    else
      render json: @clas_matiere.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clas_matieres/1
  def update
    if @clas_matiere.update(clas_matiere_params)
      render json: @clas_matiere
    else
      render json: @clas_matiere.errors, status: :unprocessable_entity
    end
  end

  # DELETE /clas_matieres/1
  def destroy
    @clas_matiere.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clas_matiere
      @clas_matiere = ClasMatiere.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def clas_matiere_params
      params.require(:clas_matiere).permit(:cla_id, :matiere_id, :deleted_at)
    end
end

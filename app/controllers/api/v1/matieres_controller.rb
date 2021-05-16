class Api::V1::MatieresController < ApplicationController
  before_action :set_matiere, only: [:show, :update, :destroy]

  # GET /matieres
  def index
    @matieres = Matiere.all.order(created_at: :desc)

    render json: @matieres
  end

  def matiere_count
    @total_matiere = Matiere.count
    render json: @total_matiere
  end

  # GET /matieres/1
  def show
    render json: @matiere
  end

  # POST /matieres
  def create
    @matiere = Matiere.new(matiere_params)

    if @matiere.save
      render json: @matiere, status: :created, location: api_v1_matiere_url(@matiere)
    else
      render json: @matiere.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /matieres/1
  def update
    if @matiere.update(matiere_params)
      render json: @matiere
    else
      render json: @matiere.errors, status: :unprocessable_entity
    end
  end

  # DELETE /matieres/1
  def destroy
    @matiere.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matiere
      @matiere = Matiere.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def matiere_params
      params.require(:matiere).permit(:code, :libelle, :coefficient)
    end
end

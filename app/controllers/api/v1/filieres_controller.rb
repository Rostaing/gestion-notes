class Api::V1::FilieresController < ApplicationController
  
  before_action :set_filiere, only: [:show, :update, :destroy]

  # GET /filieres
  def index
    @filieres = Filiere.all.order(created_at: :desc)

    render json: @filieres
  end

  # GET /filieres/1
  def show
    render json: @filiere
  end

  # POST /filieres
  def create
    @filiere = Filiere.new(filiere_params)

    if @filiere.save
      render json: @filiere, status: :created, location: api_v1_filiere_url(@filiere)
    else
      render json: @filiere.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /filieres/1
  def update
    if @filiere.update(filiere_params)
      render json: @filiere
    else
      render json: @filiere.errors, status: :unprocessable_entity
    end
  end

  # DELETE /filieres/1
  def destroy
    @filiere.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filiere
      @filiere = Filiere.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def filiere_params
      params.require(:filiere).permit(:code, :libelle, :systeme_id, :deleted_at)
    end
end

class Api::V1::ClasController < ApplicationController
  before_action :set_cla, only: [:show, :update, :destroy]

  # GET /clas
  def index
    @clas = Cla.all.order(created_at: :desc)

    render json: @clas
  end

  def classe_count
    @total_classe = Cla.count
    render json: @total_classe
  end

  # GET /clas/1
  def show
    render json: @cla
  end

  # POST /clas
  def create
    @cla = Cla.new(cla_params)

    if @cla.save
      render json: @cla, status: :created, location: api_v1_cla_url(@cla)
    else
      render json: @cla.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clas/1
  def update
    if @cla.update(cla_params)
      render json: @cla
    else
      render json: @cla.errors, status: :unprocessable_entity
    end
  end

  # DELETE /clas/1
  def destroy
    @cla.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cla
      @cla = Cla.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cla_params
      params.require(:cla).permit(:code, :libelle, :filiere_id, :deleted_at)
    end
end

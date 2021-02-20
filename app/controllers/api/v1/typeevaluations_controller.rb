class Api::V1::TypeevaluationsController < ApplicationController
  before_action :set_typeevaluation, only: [:show, :update, :destroy]

  # GET /typeevaluations
  def index
    @typeevaluations = Typeevaluation.all.order(created_at: :desc)

    render json: @typeevaluations
  end

  # GET /typeevaluations/1
  def show
    render json: @typeevaluation
  end

  # POST /typeevaluations
  def create
    @typeevaluation = Typeevaluation.new(typeevaluation_params)

    if @typeevaluation.save
      render json: @typeevaluation, status: :created, location: api_v1_typeevaluation_url(@typeevaluation)
    else
      render json: @typeevaluation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /typeevaluations/1
  def update
    if @typeevaluation.update(typeevaluation_params)
      render json: @typeevaluation
    else
      render json: @typeevaluation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /typeevaluations/1
  def destroy
    @typeevaluation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typeevaluation
      @typeevaluation = Typeevaluation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def typeevaluation_params
      params.require(:typeevaluation).permit(:libelle, :deleted_at)
    end
end

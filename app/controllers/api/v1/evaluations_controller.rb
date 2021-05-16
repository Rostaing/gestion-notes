class Api::V1::EvaluationsController < ApplicationController
  before_action :set_evaluation, only: [:show, :update, :destroy]

  # GET /evaluations
  def index
    @evaluations = Evaluation.all.order(created_at: :desc)

    render json: @evaluations
  end

  def evaluation_count
    @total_evaluation = Evaluation.count
    render json: @total_evaluation
  end

  # GET /evaluations/1
  def show
    render json: @evaluation
  end

  # POST /evaluations
  def create
    @evaluation = Evaluation.new(evaluation_params)

    if @evaluation.save
      render json: @evaluation, status: :created, location: api_v1_evaluation_url(@evaluation)
    else
      render json: @evaluation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /evaluations/1
  def update
    if @evaluation.update(evaluation_params)
      render json: @evaluation
    else
      render json: @evaluation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /evaluations/1
  def destroy
    @evaluation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluation
      @evaluation = Evaluation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def evaluation_params
      params.require(:evaluation).permit(:date_evaluation, :typeevaluation, :cla_id, :matiere_id, :anneeacademique_id, :user_id)
    end
end

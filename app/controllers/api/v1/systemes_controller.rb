class Api::V1::SystemesController < ApplicationController
  before_action :set_systeme, only: [:show, :update, :destroy]

  # GET /systemes
  def index
    @systemes = Systeme.all.order(created_at: :desc)

    render json: @systemes
  end

  # GET /systemes/1
  def show
    render json: @systeme
  end

  # POST /systemes
  def create
    @systeme = Systeme.new(systeme_params)

    if @systeme.save
      render json: @systeme, status: :created, location: api_v1_systeme_url(@systeme)
    else
      render json: @systeme.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /systemes/1
  def update
    if @systeme.update(systeme_params)
      render json: @systeme
    else
      render json: @systeme.errors, status: :unprocessable_entity
    end
  end

  # DELETE /systemes/1
  def destroy
    @systeme.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_systeme
      @systeme = Systeme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def systeme_params
      params.require(:systeme).permit(:libelle, :deleted_at)
    end
end

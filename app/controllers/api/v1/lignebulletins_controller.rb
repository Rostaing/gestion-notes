class Api::V1::LignebulletinsController < ApplicationController
  before_action :set_lignebulletin, only: [:show, :update, :destroy]

  # GET /lignebulletins
  def index
    @lignebulletins = Lignebulletin.all

    render json: @lignebulletins
  end

  # GET /lignebulletins/1
  def show
    render json: @lignebulletin
  end

  # POST /lignebulletins
  def create
    @lignebulletin = Lignebulletin.new(lignebulletin_params)

    if @lignebulletin.save
      render json: @lignebulletin, status: :created, location: api_v1_lignebulletin_url(@lignebulletin)
    else
      render json: @lignebulletin.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lignebulletins/1
  def update
    if @lignebulletin.update(lignebulletin_params)
      render json: @lignebulletin
    else
      render json: @lignebulletin.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lignebulletins/1
  def destroy
    @lignebulletin.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lignebulletin
      @lignebulletin = Lignebulletin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lignebulletin_params
      params.require(:lignebulletin).permit(:matiere, :coefficient, :moyenne_clas, :moyenne_etudiant, :bulletin_id, :deleted_at)
    end
end

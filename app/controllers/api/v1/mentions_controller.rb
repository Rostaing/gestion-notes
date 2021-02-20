class Api::V1::MentionsController < ApplicationController
  before_action :set_mention, only: [:show, :update, :destroy]

  # GET /mentions
  def index
    @mentions = Mention.all

    render json: @mentions
  end

  # GET /mentions/1
  def show
    render json: @mention
  end

  # POST /mentions
  def create
    @mention = Mention.new(mention_params)

    if @mention.save
      render json: @mention, status: :created, location: api_v1_mention_url(@mention)
    else
      render json: @mention.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mentions/1
  def update
    if @mention.update(mention_params)
      render json: @mention
    else
      render json: @mention.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mentions/1
  def destroy
    @mention.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mention
      @mention = Mention.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mention_params
      params.require(:mention).permit(:libelle, :deleted_at)
    end
end

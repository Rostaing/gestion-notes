class Api::V2::AnneeacademiquesController < ApplicationController
    before_action :set_anneeacademique, only: [:show, :update, :destroy]
  
    # GET /anneeacademiques
    def index
      @anneeacademiques = Anneeacademique.where(statut: "En cours").order(created_at: :desc)
      render json: @anneeacademiques
    end
    # def index1
    #   @anneeacademiques = Anneeacademique.where(statut: "En cours").order(created_at: :desc)
  
    #   render json: @anneeacademiques
    # end
  
    # GET /anneeacademiques/1
    def show
      render json: @anneeacademique
    end
  
    # POST /anneeacademiques
    def create
      @anneeacademique = Anneeacademique.new(anneeacademique_params)
  
      if @anneeacademique.save
        render json: @anneeacademique, status: :created, location: api_v1_anneeacademique_url(@anneeacademique)
      else
        render json: @anneeacademique.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /anneeacademiques/1
    def update
      if @anneeacademique.update(anneeacademique_params)
        render json: @anneeacademique
      else
        render json: @anneeacademique.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /anneeacademiques/1
    def destroy
      @anneeacademique.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_anneeacademique
        @anneeacademique = Anneeacademique.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def anneeacademique_params
        params.require(:anneeacademique).permit(:libelle, :date_debut, :date_fin, :deleted_at, :statut)
      end
end
  
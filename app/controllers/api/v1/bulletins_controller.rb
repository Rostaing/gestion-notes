class Api::V1::BulletinsController < ApplicationController
  before_action :set_bulletin, only: [:show, :update, :destroy]

  # GET /bulletins
  def index
    @bulletins = Bulletin.all

    render json: @bulletins
  end
  
  # CALCUL MOYENNE ETUDIANT
  def moyenne_etu
    id= params[:id]
    # ROUND(SUM(valeur*coefficient)/SUM(coefficient), 2) AS Moyenne
      @records = ActiveRecord::Base.connection.execute("
        SELECT CONCAT(
          '[', 
          GROUP_CONCAT(JSON_OBJECT(
            'pays',pays,
            'nom_etudiant',nom_etudiant,
            'prenom_etudiant',prenom_etudiant,
            'classe',classe,
            'matiere',matiere,
            'coefficient',coefficient,
            'note', note,
            'annee_academique',annee_academique
            )), 
          ']'
          ), ROUND(SUM(note*coefficient)/SUM(coefficient), 2) AS moyenne
        
        FROM releve_notes
        
        WHERE etudiant_id='"+id+"'
        
      ")
        
        render json: @records

    #*************************************************************
  end
  
  # GET /bulletins/1
  def show
    render json: @bulletin
  end

  # POST /bulletins
  def create
    @bulletin = Bulletin.new(bulletin_params)

    if @bulletin.save
      render json: @bulletin, status: :created, location: api_v1_bulletin_url(@bulletin)
    else
      render json: @bulletin.errors, status: :unprocessable_entity
    end
  end
 
  # PATCH/PUT /bulletins/1
  def update
    if @bulletin.update(bulletin_params)
      render json: @bulletin
    else
      render json: @bulletin.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bulletins/1
  def destroy
    @bulletin.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bulletin
      @bulletin = Bulletin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bulletin_params
      params.require(:bulletin).permit(:etudiant_id, :date_edition, :date_retrait, :moyenne_etudiant, :moyenne_max_classe, :moyenne_min_classe, :effectif_classe, :rang_etudiant, :decision_conseil_prof)
    end
end

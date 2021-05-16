class Api::V1::NotesController < ApplicationController
  before_action :set_note, only: [:show, :update, :destroy]

  # GET /notes
  def index
    @notes = Note.all.order(created_at: :desc)

    render json: @notes
  end

  # GET /notes/1
  def show
    render json: @note
  end

  # POST /notes
  def create
    
    # Note.transaction do
    #   @notes.each{ |note| Note.create(note_params) }
    #   if @note.save!
    #     render json: @note, status: :created, location: api_v1_note_url(@note)
    #   else
    #     render json: @note.errors, status: :unprocessable_entity
    #   end
    # end

    # @note = Note.new(note_params)
    # @note.each do |note|
    #   if note.save!
    #     render json: note, status: :created, location: api_v1_note_url(@note)
    #   else
    #     render json: note.errors, status: :unprocessable_entity
    #   end
    # end
    @erreur=false
    @note = Note.new(note_params)
    @note.each do |note|
      if !note.save
        @erreur=true
      end
    end
    render json: note, status: :created, location: api_v1_note_url(@note)
    if @erreur
      render json: note.errors, status: :unprocessable_entity
    end
    # @note = Note.new(note_params)
    # if @note.save
    #   render json: @note, status: :created, location: api_v1_note_url(@note)
    # else
    #   render json: @note.errors, status: :unprocessable_entity
    # end
  end

  # PATCH/PUT /notes/1
  def update
    if @note.update(note_params) # update
      render json: @note
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  # DELETE /notes/1
  def destroy
    @note.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def note_params
      params.require(:note).permit(:valeur, :etudiant_id, :evaluation_id, :deleted_at, :notemention)
    end
end

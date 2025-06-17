class Api::V1::NotesController < ApplicationController
  before_action :set_note, only: [:show, :update, :destroy]

  # GET /api/v1/notes
  def index
    @notes = Note.all.order(created_at: :desc)
    render json: @notes
  end

  # GET /api/v1/notes/:id
  def show
    render json: @note
  end

  # POST /api/v1/notes
  def create
    @note = Note.new(note_params)
    
    if @note.save
      render json: @note, status: :created
    else
      render json: { errors: @note.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/notes/:id
  def update
    if @note.update(note_params)
      render json: @note
    else
      render json: { errors: @note.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/notes/:id
  def destroy
    @note.destroy
    head :no_content
  end

  private

  def set_note
    @note = Note.find_by(id: params[:id])
    if @note.nil?
      render json: { error: 'Note not found' }, status: :not_found
    end
  end

  def note_params
    params.require(:note).permit(:title, :content)
  end
end

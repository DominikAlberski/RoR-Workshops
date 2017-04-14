class NotesController < ApplicationController
  before_action :current_user_notes_find, only: %I(show edit update destroy)

  def index
    @notes = current_user.notes.page(params[:page])
  end

  def new
    @note = current_user.notes.new
  end

  def create
    @note = current_user.notes.new(note_params)
    if @note.save
      flash[:notice] = 'Dodano notatkę'
      redirect_to notes_path
    else
      flash[:alert] = 'Nie udało się dodać notatki'
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @note.update(note_params)
      flash[:notice] = 'Zmodyfikowano notatkę'
      redirect_to notes_path
    else
      flash[:error] = 'Nie udało się zapisać zmian'
      render :edit
    end
  end

  def destroy
    @note.destroy
    flash[:notice] = 'Usunięto notatkę'
    redirect_to notes_path
  end

  protected

  def current_user_notes_find
    @note = current_user.notes.find(params[:id])
  end

  private

  def note_params
    params.require(:note).permit(:note, :subject)
  end
end

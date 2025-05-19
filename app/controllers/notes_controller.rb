class NotesController < ApplicationController
  before_action :set_lab

  def create
    @note = @lab.notes.build(note_params)

    if @note.save
      redirect_to @lab, notice: "Note was successfully added."
    else
      redirect_to @lab, alert: "Failed to add note."
    end
  end

  def destroy
    @note = @lab.notes.find(params[:id])
    @note.destroy
    redirect_to @lab, notice: "Note was successfully deleted."
  end

  private

  def set_lab
    @lab = Lab.find(params[:lab_id])
  end

  def note_params
    params.require(:note).permit(:content)
  end
end

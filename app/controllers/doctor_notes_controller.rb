class DoctorNotesController < ApplicationController
  before_action :set_doctor_note, only: [:show, :edit, :update, :destroy]

  # GET /doctor_notes
  # GET /doctor_notes.json
  def index
    @doctor_notes = DoctorNote.all
  end

  # GET /doctor_notes/1
  # GET /doctor_notes/1.json
  def show
  end

  # GET /doctor_notes/new
  def new
    @doctor_note = DoctorNote.new
  end

  # GET /doctor_notes/1/edit
  def edit
  end

  # POST /doctor_notes
  # POST /doctor_notes.json
  def create
    @doctor_note = DoctorNote.new(doctor_note_params)

    respond_to do |format|
      if @doctor_note.save
        format.html { redirect_to @doctor_note, notice: 'Doctor note was successfully created.' }
        format.json { render :show, status: :created, location: @doctor_note }
      else
        format.html { render :new }
        format.json { render json: @doctor_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doctor_notes/1
  # PATCH/PUT /doctor_notes/1.json
  def update
    respond_to do |format|
      if @doctor_note.update(doctor_note_params)
        format.html { redirect_to @doctor_note, notice: 'Doctor note was successfully updated.' }
        format.json { render :show, status: :ok, location: @doctor_note }
      else
        format.html { render :edit }
        format.json { render json: @doctor_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctor_notes/1
  # DELETE /doctor_notes/1.json
  def destroy
    @doctor_note.destroy
    respond_to do |format|
      format.html { redirect_to doctor_notes_url, notice: 'Doctor note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor_note
      @doctor_note = DoctorNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doctor_note_params
      params.require(:doctor_note).permit(:content, :patient_id)
    end
end

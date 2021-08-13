class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :update, :destroy]

  # GET /doctors
  def index
    @doctors = Doctor.all

    json_response(@doctors)
  end

  # GET /doctors/1
  def show
    json_response(@doctors)
  end

  # POST /doctors
  def create
    @doctor = Doctor.create!(doctor_params)
    json_response(@doctor, :created)
  end

  # DELETE /doctors/1
  def destroy
    @doctor.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def doctor_params
      params.permit(:user_id, :booking_id, :doctor)
    end
end

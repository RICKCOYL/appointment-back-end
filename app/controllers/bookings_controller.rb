class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show update destroy]

  # GET /bookings
  def index
    @bookings = Booking.all

    # render json: @bookings
    json_response(@bookings)
  end

  # GET /bookings/1
  def show
    # render json: @booking
    json_response(@booking)
  end

  # POST /bookings
  def create
    @booking = current_user.bookings.create!(booking_params)
    json_response(@booking, :created)
  end

  # DELETE /bookings/1
  def destroy
    @booking.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_booking
    @booking = Booking.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def booking_params
    params.require(:booking).permit(:title, :date, :time, :details)
  end
end

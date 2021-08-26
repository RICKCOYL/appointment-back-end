class UrgentsController < ApplicationController
  before_action :set_urgent, only: %i[show update destroy]

  # GET /urgents
  def index
    @urgents = Urgent.all

    json_response(@urgents)
  end

  # GET /urgents/1
  def show
    json_response(@urgents)
  end

  # POST /urgents
  def create
    @urgent = Urgent.new(urgent_params)

    @urgent.save
    json_response(@urgent)
  end

  # DELETE /urgents/1
  def destroy
    @urgent.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_urgent
    @urgent = Urgent.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def urgent_params
    params.require(:urgent).permit(:title, :date, :time, :details)
  end
end

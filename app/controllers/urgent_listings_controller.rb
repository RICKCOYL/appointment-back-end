class UrgentListingsController < ApplicationController
  before_action :set_urgent_listing, only: [:show, :update, :destroy]

  # GET /urgent_listings
  def index
    @urgent_listings = UrgentListing.all

    json_response(@urgent_listings)

  end

  # GET /urgent_listings/1
  def show
    json_response(@urgent_listing)
  end

  # POST /urgent_listings
  def create
    @urgent_listing = UrgentListing.new(urgent_listing_params)

    if @urgent_listing.save
      json_response(@urgent_listing)
    else
      json_response(@urgent_listing)

    end
  end

  # PATCH/PUT /urgent_listings/1
  def update
    if @urgent_listing.update(urgent_listing_params)
      json_response(@urgent_listing)
    else
      json_response(@urgent_listing)
    end
  end

  # DELETE /urgent_listings/1
  def destroy
    @urgent_listing.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_urgent_listing
      @urgent_listing = UrgentListing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def urgent_listing_params
      params.require(:urgent_listing).permit(:title, :time, :date, :details, :user_id)
    end
end

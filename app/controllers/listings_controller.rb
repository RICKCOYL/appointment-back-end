class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :update, :destroy]

  # GET /listings
  def index
    @listings = Listing.all

    json_response(@listings)

  end

  # GET /listings/1
  def show
    json_response(@listings)
  end

  # POST /listings
  def create
    @listing = current_user.listings.create!(listing_params)

    if @listing.save
    json_response(@listing)
    else
    json_response(@listing)
      
    end
  end

  # PATCH/PUT /listings/1
  def update
    if @listing.update(listing_params)
      json_response(@listing)

    else
    json_response(@listing)
      
    end
  end

  # DELETE /listings/1
  def destroy
    @listing.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def listing_params
      params.require(:listing).permit(:title, :date, :time, :details, :user_id)
    end
end

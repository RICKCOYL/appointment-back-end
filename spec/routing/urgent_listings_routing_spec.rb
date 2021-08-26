require "rails_helper"

RSpec.describe UrgentListingsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/urgent_listings").to route_to("urgent_listings#index")
    end

    it "routes to #show" do
      expect(get: "/urgent_listings/1").to route_to("urgent_listings#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/urgent_listings").to route_to("urgent_listings#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/urgent_listings/1").to route_to("urgent_listings#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/urgent_listings/1").to route_to("urgent_listings#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/urgent_listings/1").to route_to("urgent_listings#destroy", id: "1")
    end
  end
end

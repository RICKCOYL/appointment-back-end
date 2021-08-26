require "rails_helper"

RSpec.describe UrgentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/urgents").to route_to("urgents#index")
    end

    it "routes to #show" do
      expect(get: "/urgents/1").to route_to("urgents#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/urgents").to route_to("urgents#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/urgents/1").to route_to("urgents#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/urgents/1").to route_to("urgents#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/urgents/1").to route_to("urgents#destroy", id: "1")
    end
  end
end

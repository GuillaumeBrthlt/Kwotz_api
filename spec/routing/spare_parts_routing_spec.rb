require "rails_helper"

RSpec.describe SparePartsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/spare_parts").to route_to("spare_parts#index")
    end

    it "routes to #show" do
      expect(get: "/spare_parts/1").to route_to("spare_parts#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/spare_parts").to route_to("spare_parts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/spare_parts/1").to route_to("spare_parts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/spare_parts/1").to route_to("spare_parts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/spare_parts/1").to route_to("spare_parts#destroy", id: "1")
    end
  end
end

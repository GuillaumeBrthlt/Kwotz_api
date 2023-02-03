require "rails_helper"

RSpec.describe AirConditionningsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/air_conditionnings").to route_to("air_conditionnings#index")
    end

    it "routes to #show" do
      expect(get: "/air_conditionnings/1").to route_to("air_conditionnings#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/air_conditionnings").to route_to("air_conditionnings#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/air_conditionnings/1").to route_to("air_conditionnings#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/air_conditionnings/1").to route_to("air_conditionnings#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/air_conditionnings/1").to route_to("air_conditionnings#destroy", id: "1")
    end
  end
end

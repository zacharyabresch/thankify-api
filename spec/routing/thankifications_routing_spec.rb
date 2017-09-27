require "rails_helper"

RSpec.describe ThankificationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/thankifications").to route_to("thankifications#index")
    end


    it "routes to #show" do
      expect(:get => "/thankifications/1").to route_to("thankifications#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/thankifications").to route_to("thankifications#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/thankifications/1").to route_to("thankifications#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/thankifications/1").to route_to("thankifications#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/thankifications/1").to route_to("thankifications#destroy", :id => "1")
    end

  end
end

require "rails_helper"

RSpec.describe GratitudesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/gratitudes").to route_to("gratitudes#index")
    end


    it "routes to #show" do
      expect(:get => "/gratitudes/1").to route_to("gratitudes#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/gratitudes").to route_to("gratitudes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/gratitudes/1").to route_to("gratitudes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/gratitudes/1").to route_to("gratitudes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/gratitudes/1").to route_to("gratitudes#destroy", :id => "1")
    end

  end
end

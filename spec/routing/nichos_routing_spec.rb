require "rails_helper"

RSpec.describe NichosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/nichos").to route_to("nichos#index")
    end

    it "routes to #new" do
      expect(:get => "/nichos/new").to route_to("nichos#new")
    end

    it "routes to #show" do
      expect(:get => "/nichos/1").to route_to("nichos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/nichos/1/edit").to route_to("nichos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/nichos").to route_to("nichos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/nichos/1").to route_to("nichos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/nichos/1").to route_to("nichos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/nichos/1").to route_to("nichos#destroy", :id => "1")
    end

  end
end

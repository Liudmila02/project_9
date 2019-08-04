require 'rails_helper'

RSpec.describe User, type: :routing do
  describe "routing" do
	  it "routes to #index" do
	    expect(:get => "/users").to route_to("users#index")
	  end

	  it "routes to #new" do
	    expect(:get => "/signup").to route_to("users#new")
    end

    it "routes to #show" do
	    expect(:get => "/users/1").to route_to("users#show", :id => "1")
    end

	  it "routes to #edit" do
	    expect(:get => "/users/1/edit").to route_to("users#edit", :id => "1")
    end
    
    it "routes to #new" do
	    expect(:get => "/signin").to route_to("sessions#new")
	  end

	  it "routes to #destroy" do
		  expect(:delete => "/users/1").to route_to("users#destroy", :id => "1" )
	  end

    it "routes to #about" do
		  expect(:get => "/about").to route_to("home#about")
	  end

	  it "routes to #contact" do
		  expect(:get => "/contact").to route_to("home#contact")
	  end
	end
end
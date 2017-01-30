require 'rails_helper'

RSpec.describe "Routing to products", type: :routing do

  it 'routes get /products to products#index' do
    expect(get: "/products").to route_to("products#index")
  end

	it 'routes get /products/1 to products#show' do
	  expect(get: "/products/1").to route_to("products#show", id: "1")
	end

	it 'routes get /products/1/charges to charges#index' do
	  expect(post: "/products/1/charges").to route_to("charges#create", id: "1")
	end

end
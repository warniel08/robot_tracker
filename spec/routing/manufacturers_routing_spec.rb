require 'rails_helper'

RSpec.describe "Routing to manufacturers", type: :routing do
  it 'routes GET /manufacturers to manufacturers#index' do
    expect(get: "/manufacturers").to route_to("manufacturers#index")
  end

  it 'routes GET /manufacturers/1 to manufacturers#show' do
    expect(get: '/manufacturers/1').to route_to("manufacturers#show", id: "1")
  end
end

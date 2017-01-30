require 'rails_helper'

RSpec.describe "Routing to manufacturers", type: :routing do
  it 'routes GET /manufacturers to manufacturers#index' do
    expect(get: "/manufacturers").to route_to("manufacturers#index")
  end
end

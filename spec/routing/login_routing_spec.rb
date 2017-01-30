require 'rails_helper'

RSpec.describe "Routing to sessions", type: :routing do

  it 'routes get /login to sessions#new' do
    expect(get: "/login").to route_to("sessions#new")
  end

  it 'routes create /login to sessions#create' do
    expect(post: "/login").to route_to("sessions#create")
  end

  it 'routes get /logout to sessions#destroy' do
    expect(get: "/logout").to route_to("sessions#destroy")
  end
end
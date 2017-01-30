require 'rails_helper'

RSpec.describe "Routing to robots", type: :routing do

  it 'routes get /robots to robots#index' do
    expect(get: "/robots").to route_to("robots#index")
  end

  it 'routes post /models/1/robots to robots#create' do
    expect(post: "/models/1/robots").to route_to("robots#create", model_id: "1")
  end

  it 'routes get /robots/1/edit to robots#edit' do
    expect(get: '/robots/1/edit').to route_to('robots#edit', id: "1")
  end

  it 'routes get /robots/1 to robots#show' do
    expect(get: "/robots/1").to route_to("robots#show", id: "1")
  end

  it 'routes put /robots/1 to robots#update' do
    expect(put: "/robots/1").to route_to("robots#update", id: "1")
  end

  it 'routes delete /robots/1 to robots#destroy' do
    expect(delete: "/robots/1").to route_to("robots#destroy", id: "1")
  end
end

require 'rails_helper'

RSpec.describe "Routing to users", type: :routing do
  it 'routes get /users/new to users#new' do
    expect(get: "/users/new").to route_to("users#new")
  end

  it 'routes post /users to users#create' do
    expect(post: "/users").to route_to("users#create")
  end

  it 'routes get /users/1/edit to users#edit' do
    expect(get: '/users/1/edit').to route_to('users#edit', id: "1")
  end

  it 'routes get /users/1 to users#show' do
    expect(get: "/users/1").to route_to("users#show", id: "1")
  end

  it 'routes put /users/1 to users#update' do
    expect(put: "/users/1").to route_to("users#update", id: "1")
  end

  it 'routes delete /users/1 to users#destroy' do
    expect(delete: "/users/1").to route_to("users#destroy", id: "1")
  end
end

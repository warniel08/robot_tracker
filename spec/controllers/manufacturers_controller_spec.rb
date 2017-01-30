require 'rails_helper'
include SessionHelper

RSpec.describe ManufacturersController, type: :controller do
  before :each do
    user = create(:user)
    create(:manufacturer)
    session_login(user)
  end

  describe "GET #index" do
    it "responds with status code 200" do
      get :index
      expect(response).to have_http_status 200
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  # describe "GET #show" do
  #   it "responds with status code 200" do
  #     get :show, params: { id: @manufacturer.id }
  #     expect(response).to have_http_status 200
  #   end

  #   it "assigns the correct manufacturer as @manufacturer" do
  #     get :show, params: {id: @manufacturer.id}
  #     expect(assigns(:manufacturer)).to eq(@manufacturer)
  #   end

  #   it "renders the :show template" do
  #     get :show, params: { id: @manufacturer.id }
  #     expect(response).to render_template(:show)
  #   end
  # end
end

require 'rails_helper'

RSpec.describe ManufacturersController, type: :controller do
  # let!(:manufacturer) {Manufacturer.create!(name: 'Wayne Enterprises')}
  FactoryGirl.build(:manufacturer)
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

  xdescribe "GET #show" do
    it "responds with status code 200" do
      get :show
      expect(response).to have_http_status 200
    end

    it "assigns the correct manufacturer as @manufacturer" do
      get :show, {id: manufacturer.id}
      expect(assigns(:manufacturer)).to eq(manufacturer)
    end

    it "renders the :show template" do
      get :show
      expect(response).to render_template(:index)
    end
  end
end

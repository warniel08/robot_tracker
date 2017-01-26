require 'rails_helper'

RSpec.describe RobotsController, type: :controller do
  let!(:robot) {Robot.create!(designation: "HAL", inventory: false, model_id: 1)}

  describe "GET #index" do
    before(:each) { get(:index) }
    it "responds with status code 200" do
      expect(response).to have_http_status(:success)
    end

    it "assigns all robots as @robots" do
      expect(assigns(:robots)).to include(robot)
    end

    it "renders the :index template" do
      expect(response).to render_template("index")
    end
  end

  describe "GET #show" do
    it "responds with status code 200" do
      get :show, { id: robot.id }
      expect(response).to have_http_status 200
    end

    it "assigns the correct robot as @robot" do
      get :show, { id: robot.id }
      expect(assigns(:robot)).to eq(robot)
    end

    it "renders the :show template" do
      get :show, { id: robot.id }
      expect(response).to render_template(:show)
    end
  end
end


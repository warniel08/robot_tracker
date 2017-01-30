require 'rails_helper'

RSpec.describe RobotsController, type: :controller do
  before :each do
    user = create(:user)
    session_login(user)
  end

  let!(:user) {User.create(username: 'test', email: 'test@gmail.com', password: 'password', admin: true)}
  let!(:manufacturer) {Manufacturer.create!(name: "LKDVDLnjldksjldskj")}
  let!(:model) {Model.create!(model_designation: "RX113", manufacturer_id: manufacturer.id)}
  let!(:robot) {Robot.create!(designation: "HAL", inventory: false, model_id: model.id, user_id: user.id )}

  describe "GET #index" do
    before(:each) { get(:index) }
    it "responds with status code 200" do
      expect(response).to have_http_status 200
    end

    it "assigns new robots as @ordered_robots" do
      # expect(assigns(:ordered_robots)).to include(robot)
    end

    it "renders the :index template" do
      expect(response).to render_template("index")
    end
  end

  describe "GET #show" do
    it "responds with status code 200" do
      get :show, params: { id: robot.id }
      expect(response).to have_http_status 200
    end

    it "assigns the correct robot as @robot" do
      get :show, params: { id: robot.id }
      expect(assigns(:robot)).to eq(robot)
    end

    it "renders the :show template" do
      get :show, params: { id: robot.id }
      expect(response).to render_template(:show)
    end
  end
end

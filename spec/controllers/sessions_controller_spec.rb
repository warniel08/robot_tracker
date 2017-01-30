require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  # let!(:user) {User.create(username: 'test', email: 'test@gmail.com', password: 'password')}
#   let!(:manufacturer) {Manufacturer.create!(name: "LKDVDLnjldksjldskj")}
#   let!(:model) {Model.create!(model_designation: "RX113", manufacturer_id: manufacturer.id)}
#   let!(:robot) {Robot.create!(designation: "HAL", inventory: false, model_id: model.id, user_id: user.id )}

  before :each do
    user = build(:user)
    session_login(user)
  end

  describe 'GET "#new"' do
    it "responds with status code 200" do
      get :new
      expect(response).to have_http_status 200
    end

    it "renders the :login template" do
      get :new
      expect(response).to render_template(:new)
    end
  end

  xdescribe 'POST "#create"' do
    context "when valid params are passed" do
      it "responds with status code 302" do

        post :create, params: {email: "commissioner@gmail.com", password: "password"}
        user = create(:user).attributes
        p user
        expect(response).to redirect_to(robots_path)
      end
    end
  end
end

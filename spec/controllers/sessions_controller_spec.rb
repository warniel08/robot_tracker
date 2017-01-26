require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  let!(:robot) {Robot.create!(designation: "HAL", inventory: false, model_id: 1)}
  let!(:user) {User.create!(username: 'the Commissioner', email: 'commissioner@gmail.com', password: 'password')}

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
        post :create, { User: { email: "commissioner@gmail.com", password: "password" } }
        expect(response).to have_http_status 302
      end
    end
  end
end

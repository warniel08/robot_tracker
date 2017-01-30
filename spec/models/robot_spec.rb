require 'rails_helper'

RSpec.describe Robot, type: :model do
  let!(:user) {User.create(username: 'test', email: 'test@gmail.com', password: 'password')}
  let!(:manufacturer) {Manufacturer.create!(name: "LKDVDLnjldksjldskj")}
  let!(:model) {Model.create!(model_designation: "RX113", manufacturer_id: manufacturer.id)}
  let!(:robot) {Robot.create!(designation: "HAL", inventory: false, model_id: model.id, user_id: user.id )}

  describe Robot do
    describe "validations" do
      it "is valid when it's named and has an inventory status" do
        robot.valid?
      end

      it 'should validate presence of designation' do
        should validate_presence_of :designation
      end

    end

    describe "associations" do 
      it "belongs to a model" do
        should belong_to(:model)
      end

      it "belongs to a user" do
        should belong_to(:user)
      end 
    end 
  end
end

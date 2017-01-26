require 'rails_helper'

RSpec.describe Robot, type: :model do
  let!(:manufacturer) {Manufacturer.create!(name: "LKDVDLnjldksjldskj")}
  let!(:model) {Model.create!(model_designation: "RX113", manufacturer_id: manufacturer.id)}
  let!(:robot) {Robot.create!(designation: "HAL", inventory: false, model_id: model.id)}

  describe Robot do
    describe "validations" do
      it "is valid when it's named" do
        robot.valid?
      end
    end
  end
end

require 'rails_helper'

RSpec.describe Robot, type: :model do
  describe Robot do
    let!(:robot) {Robot.create!(designation: "HAL", inventory: false, model_id: 1)}

    describe "validations" do
      it "is valid when it's named" do
        robot.valid?
      end
    end
  end
end

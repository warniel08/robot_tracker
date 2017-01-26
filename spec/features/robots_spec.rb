require 'rails_helper'

RSpec.feature "Robots", type: :feature do
  context "a logged-in user" do
    let!(:robot) {Robot.create!(designation: "HAL", inventory: false, model_id: 1)}

    scenario "can view the details of any robot" do
      visit robot_path(robot)

      within('.robo-deets') do
        expect(page.html).to include("HAL")
      end
    end
  end
end

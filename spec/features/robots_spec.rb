require 'rails_helper'

RSpec.feature "Robots", type: :feature do
  let!(:manufacturer) {Manufacturer.create!(name: "LKDVDLnjldksjldskj")}
  let!(:model) {Model.create!(model_designation: "RX113", manufacturer_id: manufacturer.id)}
  let!(:robot) {Robot.create!(designation: "HAL", inventory: false, model_id: model.id)}

  context "a logged-in user" do
    scenario "can view the details of any robot" do
      visit robot_path(robot)

      within('.robo-deets') do
        expect(page.html).to have_content("HAL")
        expect(page.html).to have_content("Ordered")
      end
    end
  end
end

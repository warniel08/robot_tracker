require 'rails_helper'
include SessionHelper

RSpec.feature "Robots", type: :feature do
  let!(:manufacturer) {Manufacturer.create!(name: "LKDVDLnjldksjldskj")}
  let!(:model) {Model.create!(model_designation: "RX113", manufacturer_id: manufacturer.id)}
  let!(:robot) {Robot.create!(designation: "HAL", inventory: false, model_id: model.id)}

  before :each do
    user = create(:user)
    page.set_rack_session(:user_id => user.id)
  end

  context "logged-in user" do
    scenario "can view the details of any robot" do

      visit '/robots'

      click_on("HAL")
      within(".jumbotron") do
        expect(page).to have_content("Robot")
        expect(page).to have_content("Designation")
      end
    end
  end
end

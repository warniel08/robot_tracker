require 'rails_helper'
include SessionHelper

RSpec.feature "Robots", type: :feature do
  let!(:manufacturer) {Manufacturer.create!(name: "LKDVDLnjldksjldskj")}
  let!(:model) {Model.create!(model_designation: "RX113", manufacturer_id: manufacturer.id)}
  let!(:robot) {Robot.create!(designation: "HAL", inventory: false, model_id: model.id)}

  context "logged-in user" do
    before :each do
      user = create(:user)
    end

    scenario "can view the details of any robot" do

      # visit '/'
      # click_link('No')
      # expect(page).to have_content("Email")
      # fill_in "session_email", with: "commissioner@gmail.com"
      # fill_in "session_password", with: "password"
      # click_button("Login")
      # p page.html
      # expect(page).to have_no_content("Email")
      # expect(page).to have_content("Peaceful Gathering")
      # expect(page).to have_current_path('/robots')
      #
      visit '/robots'
      #
      # within(".jumbotron") do
        # expect(page).to have_content("Robot")
      #   expect(page).to have_content("Ordered")
      # end
    end
  end
end

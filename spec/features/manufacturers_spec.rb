require 'rails_helper'

RSpec.feature "Manufacturer", type: :feature do
  let!(:manufacturer) {Manufacturer.create!(name: "Stark Industries")}
  let!(:manufacturer) {Manufacturer.create!(name: "Bain Capital")}
  let!(:manufacturer) {Manufacturer.create!(name: "Wayne Enterprises")}

  before :each do
    user = create(:user)
    page.set_rack_session(:user_id => user.id)
  end

  scenario "the user sees a list of manufacturers and can view them" do

    visit "/manufacturers"
  
    expect(page).to have_content manufacturer.name
    
  end
end

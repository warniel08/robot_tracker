require 'rails_helper'

RSpec.feature "Manufacturer", type: :feature do
  manufacturer = FactoryGirl.create(:manufacturer)

  scenario "the user sees a list of manufacturers and can view them" do

    visit manufacturers_path

    within('.mfg-index') do
      expect(page).to have_content manufacturer.name
      click_link("#{manufacturer.name}")
    end

    expect(page).to have_current_path manufacturer_path(manufacturer)
  end
end

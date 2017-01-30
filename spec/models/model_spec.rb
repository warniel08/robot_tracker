require 'rails_helper'

RSpec.describe Model, type: :model do
  it "validates that model has a model_designation" do
    create(:manufacturer)
    expect(create(:model)).to be_valid
  end

  it "belongs to a manufacturer" do
  	should belong_to(:manufacturer)
  end

   it "has many robots" do
  	should have_many(:robots)
  end
end

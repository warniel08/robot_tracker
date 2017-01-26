require 'rails_helper'

RSpec.describe Manufacturer, type: :model do
  it "validates that manufacturer has a name" do
    expect(FactoryGirl.build(:manufacturer)).to be_valid
  end

  it "model should require a name" do
    expect(FactoryGirl.build(:manufacturer, name: "")).to_not be_valid
  end
end

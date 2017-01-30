require 'rails_helper'

RSpec.describe Manufacturer, type: :model do
  it "validates that manufacturer has a name" do
    expect(create(:manufacturer)).to be_valid
  end

  it "should require a name" do
    expect(FactoryGirl.build(:manufacturer, name: "")).to_not be_valid
  end

  it "has many models" do
  	should have_many(:models)
  end

   it "has many robots" do
  	should have_many(:robots)
  end
end

require 'rails_helper'

RSpec.describe Model, type: :model do
  let!(:manufacturer) {Manufacturer.create!(name: "LKDVDLnjldksjldskj")}
  let!(:model) {Model.create!(model_designation: "RX113", manufacturer_id: manufacturer.id)}

  it "validates that model has a model_designation" do
    expect(model).to be_valid
  end

  it "belongs to a manufacturer" do
  	should belong_to(:manufacturer)
  end

   it "has many robots" do
  	should have_many(:robots)
  end
end

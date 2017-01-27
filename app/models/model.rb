class Model < ApplicationRecord
  belongs_to :manufacturer
  has_many :robots

  validates :model_designation, presence: true

  def self.generate_models_data
    response = HTTParty.get("http://jordankamin.com/robots_api/robots.json")
    data = JSON.parse(response.body)
    manufacturers = data["manufacturers"]

    manufacturers.each do |manufacturer|
      mfg_object = Manufacturer.find_by(name: manufacturer['name'])
      manufacturer["models"].each do |model|
        Model.find_or_create_by(
          model_designation: model["modelNo"],
          height: model["height"],
          weight: model["weight"],
          price:  model["price"],
          manufacturer_id: mfg_object.id
        )
      end
    end
  end
end

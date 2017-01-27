User.destroy_all
Manufacturer.destroy_all
Robot.destroy_all
Model.destroy_all

User.create(username: 'the Commissioner', email: 'commissioner@gmail.com', password: 'password')

# Manufacturer.create(name: "Wayne Enterprises")
# Manufacturer.create(name: "Stark Industries")
# Manufacturer.create(name: "Inc Incorporated")

Manufacturer.generate_manufacturer_names

# Model.create(model_designation: "WE-111", height: 2.5, weight: 2.3, manufacturer_id: (Manufacturer.first.id))
# Model.create(model_designation: "WE-112", height: 3.7, weight: 1.1, manufacturer_id: (Manufacturer.first.id))
# Model.create(model_designation: "WE-113", height: 3.1, weight: 3.7, manufacturer_id: (Manufacturer.first.id))
#
# Model.create(model_designation: "II-111", height: 2.3, weight: 1.3, manufacturer_id: (Manufacturer.last.id))
# Model.create(model_designation: "II-112", height: 2.7, weight: 2.1, manufacturer_id: (Manufacturer.last.id))
# Model.create(model_designation: "II-113", height: 2.1, weight: 3.7, manufacturer_id: (Manufacturer.last.id))
#
# Model.create(model_designation: "SI-111", height: 4.5, weight: 1.3, manufacturer_id: (Manufacturer.second.id))
# Model.create(model_designation: "SI-112", height: 4.7, weight: 1.1, manufacturer_id: (Manufacturer.second.id))
# Model.create(model_designation: "SI-113", height: 4.1, weight: 1.4, manufacturer_id: (Manufacturer.second.id))
#
# 5.times {Robot.create(designation: "HAL", inventory: false, model_id: Model.first.id)}
# 5.times {Robot.create(designation: "Ava", inventory: true, model_id: Model.first.id)}

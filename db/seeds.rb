User.destroy_all
Manufacturer.destroy_all
Robot.destroy_all
Model.destroy_all

User.create(username: 'the Commissioner', email: 'commissioner@gmail.com', password: 'password')

Manufacturer.create(name: "Wayne Enterprises")
Manufacturer.create(name: "Stark Industries")
Manufacturer.create(name: "Warner's World Inc")

5.times {Robot.create(designation: "HAL", inventory: false, model_id: 1)}
5.times {Robot.create(designation: "Ava", inventory: true, model_id: 2)}

Model.create(model_designation: "RX111", height: 2.5, weight: 2.3, manufacturer_id: (Manufacturer.first.id))
Model.create(model_designation: "RX112", height: 3.7, weight: 1.1, manufacturer_id: (Manufacturer.first.id))
Model.create(model_designation: "RX113", height: 3.1, weight: 3.7, manufacturer_id: (Manufacturer.first.id))

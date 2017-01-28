require 'faker'

User.destroy_all
Manufacturer.destroy_all
Robot.destroy_all
Model.destroy_all

User.create(username: 'the Commissioner', email: 'commissioner@gmail.com', password: 'password', admin: true)

Manufacturer.generate_manufacturer_names
Model.generate_models_data

16.times { Robot.create(designation: "Unnamed", model_id: Model.order("RANDOM()").first.id, user_id: User.first.id) }

16.times { Robot.create(designation: Faker::Name.name, inventory: true, model_id: Model.order("RANDOM()").first.id, user_id: User.first.id) }


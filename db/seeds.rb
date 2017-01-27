User.destroy_all
Manufacturer.destroy_all
Robot.destroy_all
Model.destroy_all

User.create(username: 'the Commissioner', email: 'commissioner@gmail.com', password: 'password')

Manufacturer.generate_manufacturer_names
Model.generate_models_data

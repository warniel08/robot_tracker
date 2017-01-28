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


16.times { Robot.create(designation: Faker::Name.name, inventory: true, model_id: Model.order("RANDOM()").first.id) }


#### TEST CARDS ####
# 242424242424242 Visa
# 4012888888881881  Visa
# 4000056655665556  Visa (debit)
# 5555555555554444  Mastercard
# 5200828282828210  Mastercard (debit)
# 5105105105105100  Mastercard (prepaid)
# 378282246310005 American Express
# 371449635398431 American Express
# 6011111111111117  Discover
# 6011000990139424  Discover
# 30569309025904  Diners Club
# 38520000023237  Diners Club
# 3530111333300000  JCB
# 3566002020360505  JCB


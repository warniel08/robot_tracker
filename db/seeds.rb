User.create(username: 'the Commissioner', email: 'commissioner@gmail.com', password: 'password')
5.times {Robot.create(designation: "HAL", inventory: false, model_id: 1)}
5.times {Robot.create(designation: "Ava", inventory: true, model_id: 2)}

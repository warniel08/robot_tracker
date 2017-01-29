module RobotHelper

  def find_inventory_by_mfg(manufacturer)
  	manufacturer.robots.where(inventory: true)
  end

  def robot_purchased(robot)
  	return true if robot.user_id != 1
  end

end

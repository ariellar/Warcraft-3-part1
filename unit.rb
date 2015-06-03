class Unit 
  attr_reader :health_points, :attack_power, :gold, :food
  def initialize(hp, ap)
    @gold = 1000
    @food = 80  
    @health_points = hp  
    @attack_power = ap 
  end


  def damage(dmg)
    @health_points -= dmg
  end

  def attack!(enemy_unit)
    enemy_unit.damage(@attack_power)
  end
end
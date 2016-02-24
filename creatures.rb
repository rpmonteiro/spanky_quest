class Creatures

  attr_reader :name, :attack_damage  
  attr_accessor :health

  def initialize(params)
    @name = params[:name]
    @health = params[:health]
    @attack_damage = params[:attack_damage]
  end

  def attack(target)
    target.health -= @attack_damage
  end

  def check_health
    you_are_dead = 0
    @health <= 0 ? you_are_dead : @health
  end

end


class Player < Creatures
  attr_reader :name, :health, :attack_damage

  def move()

  end

  def rest()

  end

end

class Monster < Creatures
  attr_reader :name, :health, :attack_damage

end
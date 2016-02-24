class Creatures

  attr_reader :name, :health, :attack_damage  

  def initialize(params)
    @name = params[:name]
    @health = params[:health]
    @attack_damage = params[:attack_damage]
  end

  def attack(target)
    target.health - @attack_damage
  end

  def check_health
    return @health
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
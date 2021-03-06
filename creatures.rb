class Creatures

  attr_reader :name, :attack_damage 
  attr_accessor :health, :position 

  def initialize(params)
    @position = 0
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

  def is_dead?
    @health <= 0 ? true : false
  end

end


class Player < Creatures
  attr_reader :name, :health, :attack_damage

  def move()
    @position += 1
  end

  def rest()
    unless @player.check_health == 100 
      @player.health += 25
    end
  end

end

class Monster < Creatures
  attr_reader :name, :health, :attack_damage

end
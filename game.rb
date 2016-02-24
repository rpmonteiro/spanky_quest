class Game

  def initialize(dungeon, player)
    @dungeon = dungeon
    @player = player
  end

  def fight(player, monster)
    while player.check_health > 0
      player.attack(monster)
      if monster.check_health <= 0 
         break
      else monster.attack(player)
      end
    end
    next_turn()
  end

  def game_over
    return false
  end

  def next_turn
    
  end

end
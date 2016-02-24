require 'minitest/autorun'
require 'minitest/rg'

require_relative '../creatures'

class TestCreatures < Minitest::Test

  def setup
   @creatures1 = Creatures.new(name: "Topogigio", health: 75, attack_damage: 10)

   @player = Player.new(name: "Spanky", health: 100, attack_damage: 20 )

   @monster1 = Monster.new(name: "Dragon", health: 75, attack_damage: 10)
  end


  #### Creatures Object
  def test_creature_has_name
    assert_equal("Topogigio", @creatures1.name)
  end

  def test_creature_has_health
    assert_equal(75, @creatures1.health)
  end

  def test_creature_has_attack
    assert_equal(10, @creatures1.attack_damage)
  end


  #### Player Object
  def test_player_has_name
    assert_equal("Spanky", @player.name)
  end

  def test_player_has_health
    assert_equal(100, @player.health)
  end

  def test_player_has_attack
    assert_equal(20, @player.attack_damage)
  end

  #### Monster Object
  def test_monster_has_name
    assert_equal("Dragon", @monster1.name)
  end

  def test_monster_has_health
    assert_equal(75, @monster1.health)
  end

  def test_monster_has_attack
    assert_equal(10, @monster1.attack_damage)
  end

  ### Player attack
  def test_player_attacks
    expected_result = @monster1.health - 20
    @player.attack( @monster1 )
    assert_equal( expected_result, @player.attack(@monster1)) 
  end

end
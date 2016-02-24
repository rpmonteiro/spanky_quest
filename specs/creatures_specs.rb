require 'minitest/autorun'
require 'minitest/rg'

require_relative '../creatures'

class TestCreatures < Minitest::Test

  def setup
   @creatures1 = Creatures.new(name: "Dragon", health: 75, attack: 10)

   @player = Player.new( name: "Spanky", health: 100, attack: 20 )
  end

  def test_creature_has_name
    assert_equal("Dragon", @creatures1.name)
  end

  def test_creature_has_health
    assert_equal(75, @creatures1.health)
  end

  def test_creature_has_attack
    assert_equal(10, @creatures1.attack)
  end

  def test_player_has_name
    assert_equal("Spanky", @player.name)
  end

  def test_player_has_health
    assert_equal(100, @player.health)
  end

  def test_player_has_attack
    assert_equal(20, @player.attack)
  end

end
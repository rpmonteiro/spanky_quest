require 'minitest/autorun'
require 'minitest/rg'

require_relative '../creatures'

class TestCreatures < Minitest::Test

  def setup
   @monster1 = Creature.new(name: "Dragon", health: 75, attack: 10)
  end

  def test_creature_has_name
    assert_equal("Dragon", @monster1.name)
  end

  def test_creature_has_health
    assert_equal(75, @monster1.health)
  end

  def test_creature_has_attack
    assert_equal(10, @monster1.attack)
  end

end
require 'minitest/autorun'
require 'minitest/rg'

require_relative '../creatures'

class TestCreatures < Minitest::Test

  def setup
   @monster1 = Creature.new(name: "Dragon", health: 75, attack: 10)
  end

  def test_creature_is_created
    assert_equal("Dragon", @monster1.name)
  end

end
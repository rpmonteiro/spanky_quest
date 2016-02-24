require('minitest/autorun')
require('minitest/rg')
require_relative('../game')
require_relative('../creatures')
require_relative('../dungeon')


class TestGame< MiniTest::Test

  def setup

    @game = Game.new(@dungeon, @player)

    @dungeon = Dungeon.new(5)

    @player = Player.new(name: "Spanky", health: 100, attack_damage: 20)

    @monster = Monster.new(name: "Dragon", health: 60, attack_damage: 10)

  end

  def test_fight
    @game.fight(@player, @monster)
    assert_equal(80, @player.check_health)
    assert_equal(0, @monster.check_health)
  end

  def test_game_over
    assert_equal(false, @game.game_over)
   end 

end
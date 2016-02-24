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

    @monster = Monster.new(name: "Dragon", health: 75, attack_damage: 10)

  end

end
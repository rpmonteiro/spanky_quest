require('minitest/autorun')
require('minitest/rg')
require_relative('../dungeon')


class TestDungeon< MiniTest::Test

  def setup

    modifiers = {
      2 => @monster,
      4 => @enigma
    }

    @dungeon = Dungeon.new(5, modifiers)

  end

  def test_board_should_have_5_tiles
    assert_equal(5, @dungeon.path.size)
  end

  def test_modifier_2
    assert_equal(@monster, @dungeon.path[2])
  end

  def test_modifier_4
    assert_equal(@enigma, @dungeon.path[4])
  end

  def test_end_tile
    assert_equal(4, @dungeon.end_tile)
  end


end
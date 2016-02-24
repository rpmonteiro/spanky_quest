require('minitest/autorun')
require('minitest/rg')
require_relative('../dungeon')


class TestDungeon< MiniTest::Test

  def setup

    @dungeon = Dungeon.new(5)

  end

  def test_board_should_have_5_tiles
    assert_equal(5, @dungeon.path.size )
  end

  def test_end_tile
    assert_equal(4, @dungeon.end_tile)
  end


end
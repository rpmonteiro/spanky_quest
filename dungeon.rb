class Dungeon

attr_reader :path

  def initialize(size)
    @path = Array.new(size,0)
  end

  def end_tile
    @path.size - 1
  end

end
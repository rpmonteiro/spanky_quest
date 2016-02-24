class Dungeon

attr_reader :path

  def initialize(size, modifiers)

    @path = Array.new(size,0)

    for key in modifiers.keys
      @path[key] = modifiers[key]
    end

  end

  def end_tile
    @path.size - 1
  end

end
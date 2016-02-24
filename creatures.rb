class Creature

  attr_reader :name

  def initialize(params)
    @name = params[:name]
    @health = params[:health]
    @attack = params[:attack]
  end

end
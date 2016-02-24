class Creature

  attr_reader :name, :health, :attack

  def initialize(params)
    @name = params[:name]
    @health = params[:health]
    @attack = params[:attack]
  end

end
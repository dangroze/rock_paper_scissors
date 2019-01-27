class Game
  attr_reader :player, :weapon

  def initialize(player, weapon)
    @player = player
    @weapon = weapon
  end
end

class Player
  attr_accessor :name, :lives, :turn
  def initialize(name)
    self.name = name
    self.lives = 3
    self.turn = true
  end
end
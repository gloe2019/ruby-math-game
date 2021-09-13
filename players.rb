class Players
  attr_accessor :score, :name
  def initialize(name, score=3)
    @name = name
    @score = score
  end
  def decrement_score
    @score -= 1
  end
end

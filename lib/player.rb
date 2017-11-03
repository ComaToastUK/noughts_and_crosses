class Player
  attr_reader :team, :name
  def initialize(input)
    @team = input.fetch(:team)
    @name = input.fetch(:name)
  end
end

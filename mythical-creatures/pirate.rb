class Pirate

  attr_reader :name, :job, :booty

  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @booty = 0
  end

  def cursed?
    @booty >= 3
  end

  def commit_heinous_act
    @booty += 1
  end

  def rob_ship
    @booty = 100
    true
  end

end

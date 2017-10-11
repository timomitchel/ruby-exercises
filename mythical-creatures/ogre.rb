class Ogre

  attr_reader :name, :home, :encounters, :swings, :encounter_counter

  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @encounters = []
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(human)
    @encounters << human
    human.encounter_counter += 1
    @encounter_counter += 1
    @swings += 1 if human.notices_ogre?
    human.state = true if @swings == 2
  end

  def swing_at(human)
     @swings += 1
  end

  def apologize(human)
    human.state = false
  end
end

class Human

  attr_reader :name
  attr_accessor :encounter_counter, :state

  def initialize
    @name = 'Jane'
    @encounter_counter = 0
    @state = false
  end

  def notices_ogre?
    (@encounter_counter % 3) == 0
  end

  def knocked_out?
    @state
  end

end

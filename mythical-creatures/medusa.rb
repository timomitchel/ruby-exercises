class Medusa

  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    @statues << victim
    victim.get_stoned
  end

  def victim_limit
    @statues[0].unstoned
    @statues = @statues[0..2]
  end
end

class Person

  attr_reader :name

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

  def get_stoned
    @stoned = true
  end

  def unstoned
    @stoned = false
  end

end

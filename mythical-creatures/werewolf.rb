class Werewolf

  attr_reader :name, :location, :belly

  def initialize(name, location = "London")
    @name = name
    @location = location
    @count = 0
    @belly = []
  end

  def human?
    @count == 0 || @count.even?
  end

  def change!
    @count += 1
  end

  def wolf?
    @count.odd?
  end

  def hungry
    wolf? && @belly == []
  end

  def consumes(victim)
    if wolf?
      @belly << victim
      victim.status = :dead
    else
      @belly
    end
  end

end

class Victim
  attr_accessor :status

  def initialize
    @status = :alive
  end
end

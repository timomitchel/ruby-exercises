class MilkBottle

  def initialize
    @bottle = true
  end

  def full?
    @bottle
  end

  def spill
    @bottle = false
  end

end

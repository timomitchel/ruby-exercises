class Floor

  def initialize
    @floor = true
  end

  def dirty?
    @floor
  end

  def wash
    @floor = false
  end

end

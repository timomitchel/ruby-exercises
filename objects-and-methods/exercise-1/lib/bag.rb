class Bag
  attr_accessor :candy
  def initialize
    @candies = []
    @count = 0
  end

  def empty?
    if @candies.length > 0
      false
    else
      true
    end
  end

  def <<(candy)
    @candies << candy
  end

  def count
    @candies.length
  end

  def candies
    @candies
  end

  def contains?(candy_type)
    @candies.any? do |candy|
      if candy.type == candy_type
        true
      else
        false
      end
    end
  end




end

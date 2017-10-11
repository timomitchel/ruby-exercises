class Bag
  attr_reader :candies, :count, :grab
  def initialize
    @candies = []
    @count = 0
  end

  def empty?
    if @candies.length < 1
      true
    else
      false
    end
  end

  def <<(candy)
    @count += 1
    @candies << candy
  end

  def contains?(candy_type)
    @candies.one? do |candy|
      candy.type == candy_type
    end
  end

  def grab(some)
    @count -= 1
    @candies.find {|candy| candy.type == some}
  end

  def take(num)
    @count -= num
    @candies.take(num)
  end

end

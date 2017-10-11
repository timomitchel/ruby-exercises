class TrickOrTreater

  attr_reader :bag, :candy_count, :sugar_level, :sugar
  def initialize(costume)
    @costume = costume
    @bag = []
    @candy_count = 0
    @sugar_level = 0
  end

  def dressed_up_as
    @costume.style
  end

  def candy_count
    @bag.length
  end

  def eat
    @sugar_level += @bag[0].sugar
    @bag.shift(1)
  end

  def empty?
    true unless @bag.length > 0
  end

  def has_candy?
    if @bag.length > 0
      true
    else
      false
    end

  end

  def <<(candy)
    @bag << candy
  end
end

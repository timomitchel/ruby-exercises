class TrickOrTreater
  def initialize(costume)
    @costume = costume.style
    @bag = []
  end

  def dressed_up_as
    @costume
  end

  def bag
    @bag
  end

  def <<(candy)
    @bag << candy
  end

  def isempty?
    if @bag.length > 0
      false
    else
      true
    end
  end

  def has_candy?
    if @bag.length > 0
      true
    else
      false
    end
  end

  def candy_count
    @bag.length
  end

  def eat
    @bag.pop
  end


end

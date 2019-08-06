class Bears

  attr_accessor :name, :type, :empty_stomach

  def initialize(name, type, empty_stomach)
    @name = name
    @type = type
    @empty_stomach = empty_stomach
  end

  def takes_fish_from_river(fish, river)
    empty_stomach.push(fish)
    river.fish.delete(fish)
  end

  def bear_can_roar
    return "ROOOAAR!!!"
  end
end

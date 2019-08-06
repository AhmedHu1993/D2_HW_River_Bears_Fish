require("minitest/autorun")
require("minitest/rg")
require_relative("../bears")
require_relative("../fish")
require_relative("../river")


class RiversBearsFish < MiniTest::Test

  def setup
    @fish1 = Fish.new("Pirarucu")
    @fish2 = Fish.new("Huso huso")
    @river = River.new("Amazon", [@fish1, @fish2])
    @bear1 = Bears.new("Yogi", "Grizzly", [])
  end

  def test_bear_takes_fish_from_river
    @bear1.takes_fish_from_river(@fish1, @river)
    assert_equal(1, @bear1.empty_stomach.length)
    assert_equal(1, @river.fish.length)
  end

  #the extension
  def test_bear_can_roar
    assert_equal("ROOOAAR!!!" ,@bear1.bear_can_roar)
  end

  def test_bear_food_count
    assert_equal(0, @bear1.empty_stomach.count)
  end

  def test_river_fish_count
    assert_equal(2, @river.fish.count)
  end

end

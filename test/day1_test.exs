defmodule Aoc2018.Day1.Test do
  use ExUnit.Case
  alias Aoc2018.Day1

  describe "part 1" do
    test "testing with example inputs" do
      assert Day1.calibrate(~w/+1 -2 +3 +1/) == 3
      assert Day1.calibrate(~w/+1 +1 +1/) == 3
      assert Day1.calibrate(~w/+1 +1 -2/) == 0
      assert Day1.calibrate(~w/-1 -2 -3/) == -6
    end

    test "testing with generated input" do
      assert Day1.calibrate_freq("lib/day1/input.txt") == 437
    end
  end

  describe "part 2" do
    test "testing with example inputs" do
      assert Day1.reaches_twice(~w/+1 -2 +3 +1/) == 2
      assert Day1.reaches_twice(~w/+1 -1/) == 0
      assert Day1.reaches_twice(~w/+3 +3 +4 -2 -4/) == 10
      assert Day1.reaches_twice(~w/-6 +3 +8 +5 -6/) == 5
      assert Day1.reaches_twice(~w/+7 +7 -2 -7 -4/) == 14
    end
  end
end

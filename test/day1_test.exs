defmodule Aoc2018.Day1.Test do
  use ExUnit.Case
  alias Aoc2018.Day1

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

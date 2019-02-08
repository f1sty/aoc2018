defmodule Aoc2018.Day2.Test do
  use ExUnit.Case
  alias Aoc2018.Day2

  describe "part 1" do
    test "testing with example inputs" do
      assert Day2.checksum(["abcdef", "bababc", "abbcde", "abcccd", "aabcdd", "abcdee", "ababab"]) ==
               12
    end
  end
end

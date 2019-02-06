defmodule Aoc2018.Day1 do

  def calibrate_freq(input_file) do
    File.stream!(input_file)
    |> calibrate()
  end

  def calibrate(input) do
    input
    |> Enum.reduce(0, &(&2 + String.to_integer(String.trim(&1))))
  end
end

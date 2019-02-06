defmodule Aoc2018.Day1 do
  def calibrate_freq(input_file) do
    File.stream!(input_file)
    |> calibrate()
  end

  def calibrate(input) do
    input
    |> Enum.reduce(0, &(&2 + String.to_integer(String.trim(&1))))
  end

  def reaches_twice(input) do
    reaches_twice(input, input)
  end

  defp reaches_twice(rest, initial_input, curr_freq \\ 0, seen_before \\ %{})

  defp reaches_twice([], inp, curr_freq, seen_before) do
    reaches_twice(inp, inp, curr_freq, seen_before)
  end

  defp reaches_twice([num | tail], inp, curr_freq, seen_before) do
    num =
      num
      |> String.trim()
      |> String.to_integer()

    if Map.has_key?(seen_before, curr_freq) do
      curr_freq
    else
      seen_before = Map.put(seen_before, curr_freq, true)
      reaches_twice(tail, inp, curr_freq + num, seen_before)
    end
  end
end

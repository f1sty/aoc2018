defmodule Aoc2018.Day2 do
  def checksum(input) do
    input
    |> Enum.reduce(%{}, fn line, acc ->
      line
      |> charmap()
      |> Enum.filter(fn {_, val} -> val == 2 or val == 3 end)
      |> Keyword.values()
      |> Enum.uniq()
      |> Enum.reduce(acc, fn idx, a -> Map.update(a, idx, 1, &(&1 + 1)) end)
    end)
    |> Map.values()
    |> Enum.reduce(&(&1 * &2))
  end

  def charmap(inp) do
    inp
    |> String.graphemes()
    |> Enum.reduce(%{}, fn char, acc -> Map.update(acc, char, 1, &(&1 + 1)) end)
  end
end

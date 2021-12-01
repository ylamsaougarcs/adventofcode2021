defmodule AdvenOfCode do
  @moduledoc """
  Main module to access AdventOfCode functions
  """

  @spec day_one_first(list(integer())) :: integer()
  @doc """
  Day One part one code.

  ## Examples

      iex> AdvenOfCode.day_one_first([199, 200, 208, 210, 200, 207, 240, 269, 260, 263])
      7
  """
  def day_one_first(input) do
    DayOne.PartOne.increases_number(input, 0)
  end

  @spec day_one_second(list(integer())) :: integer()
  @doc """
  Day One part one code.

  ## Examples

      iex> AdvenOfCode.day_one_second([199, 200, 208, 210, 200, 207, 240, 269, 260, 263])
      5
  """
  def day_one_second(input) do
    DayOne.PartTwo.sumWindowsOf(input) |> DayOne.PartOne.increases_number(0)
  end
end

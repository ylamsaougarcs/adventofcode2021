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

  @spec day_two_first([{:down, number} | {:forward, number} | {:up, number}]) :: integer()
  @doc """
  Day Two part one code.

  ## Examples

      iex> AdvenOfCode.day_two_first([{:forward, 5}, {:down, 5}, {:forward, 8}, {:up, 3}, {:down, 8}, {:forward, 2}])
      150
  """
  def day_two_first(commands) do
    DayTwo.PartOne.get_position(commands)
  end

  @spec day_two_second([{:down, number} | {:forward, number} | {:up, number}]) :: number
  @doc """
  Day Two part two code.

  ## Examples

      iex> AdvenOfCode.day_two_second([{:forward, 5}, {:down, 5}, {:forward, 8}, {:up, 3}, {:down, 8}, {:forward, 2}])
      900
  """
  def day_two_second(commands) do
    DayTwo.PartTwo.get_position(commands)
  end
end

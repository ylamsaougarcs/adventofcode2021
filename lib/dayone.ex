defmodule DayOne do
  defmodule PartOne do
    def increases_number([_head | []], increases) do
      increases
    end

    def increases_number([head | [next | tail]], increases) when next > head do
      increases_number([next | tail], increases + 1)
    end

    def increases_number([head | [next | tail]], increases) when next <= head do
      increases_number([next | tail], increases)
    end
  end

  defmodule PartTwo do
    def sumWindowsOf(list, result \\ []) do
      case list do
        [first | [second | [third | tail]]] ->
          sumWindowsOf([second | [third | tail]], [first + second + third | result])
        _ ->
          Enum.reverse(result)
      end
    end
    def increasesByWindows(list) do
      sumWindowsOf(list) |> DayOne.PartOne.increases_number(0)
    end
  end
end

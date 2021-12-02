defmodule DayTwo do
  def parseInput(raw_commands) do
    Stream.map(raw_commands, fn command -> String.split(command) end) |> Stream.map(fn [head | [next | []]] -> {String.to_existing_atom(head), String.to_integer(next)} end)
  end
  defmodule PartOne do
    def get_position(commands, horizontal \\ 0, vertical \\ 0)

    def get_position([{:forward, value} | tail], horizontal, vertical) do
      get_position(tail, horizontal + value, vertical)
    end

    def get_position([{:up, value} | tail], horizontal, vertical) do
      get_position(tail, horizontal,  max(0, vertical - value))
    end

    def get_position([{:down, value} | tail], horizontal, vertical) do
      get_position(tail, horizontal, vertical + value)
    end

    def get_position([], horizontal, vertical) do
      horizontal * vertical
    end
  end
  defmodule PartTwo do
    def get_position(commands, horizontal \\ 0, vertical \\ 0, aim \\ 0)

    def get_position([{:forward, value} | tail], horizontal, vertical, aim) do
      get_position(tail, horizontal + value, vertical + (aim * value), aim)
    end

    def get_position([{:up, value} | tail], horizontal, vertical, aim) do
      get_position(tail, horizontal,  vertical, aim - value)
    end

    def get_position([{:down, value} | tail], horizontal, vertical, aim) do
      get_position(tail, horizontal, vertical, aim + value)
    end

    def get_position([], horizontal, vertical, _aim) do
      horizontal * vertical
    end
  end
end

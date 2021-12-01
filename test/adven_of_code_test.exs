defmodule AdvenOfCodeTest do
  use ExUnit.Case
  doctest AdvenOfCode

  test "calculates the number of increases" do
    assert AdvenOfCode.day_one_first([199, 200, 208, 210, 200, 207, 240, 269, 260, 263]) == 7
  end
end

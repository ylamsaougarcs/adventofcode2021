defmodule AdvenOfCodeTest do
  use ExUnit.Case
  doctest AdvenOfCode

  test "calculates the number of increases" do
    assert AdvenOfCode.day_one_first([199, 200, 208, 210, 200, 207, 240, 269, 260, 263]) == 7
  end

  test "calculates the final position of the submarine" do
    assert AdvenOfCode.day_two_first([
             {:forward, 7},
             {:down, 9},
             {:up, 3},
             {:forward, 12}
           ]) == 19 * 6
  end
end

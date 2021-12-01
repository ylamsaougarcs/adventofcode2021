defmodule Inputs do
  def read(path \\ "input.txt") do
    {result, contents} = File.read(path)

    case result do
      :error ->
        raise "file error happened"

      :ok ->
        String.split(contents, "\n")
    end
  end
end

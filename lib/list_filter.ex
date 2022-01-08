defmodule ListFilter do
  require Integer

  def call(list) do
    numbers = Enum.map(list, fn element -> convertStringToNumber(element) end)
    Enum.count(numbers, fn element -> Integer.is_odd(element) == true end)
  end

  defp convertStringToNumber(element) do
    try do
      String.to_integer(element)
    rescue
      ArgumentError ->
        false
    end
  end
end

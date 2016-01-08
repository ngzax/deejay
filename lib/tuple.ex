defmodule Tuple do

  @spec new(atom, number) :: tuple
  def new(atom, number) do
    {atom, number}
  end

  @spec attribute(tuple) :: atom
  def attribute(tuple) do
    elem(tuple, 0)
  end

  @spec value(tuple) :: atom
  def value(tuple) do
    elem(tuple, 1)
  end

end

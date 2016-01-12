defmodule DeeJay.TupleValue do

  @moduledoc """
  
  """
  
  @typedoc """
    a tuple value (tuple for short) over those types—t is a set of n ordered triples of the form <Ai,Ti,vi>, 
    where 
      Ai is an attribute name,
      Ti is a type name, and
      vi is a value of type Ti.
  """
  @type tuple_value :: {atom, any}
  
  @spec tuple_value(atom, any) :: tuple_value
  def tuple_value(atom, any) do
    {atom, any}
  end

  @spec attribute(tuple_value) :: atom
  def attribute(tuple_value) do
    elem(tuple_value, 0)
  end

  @spec value(tuple_value) :: atom
  def value(tuple_value) do
    elem(tuple_value, 1)
  end

end

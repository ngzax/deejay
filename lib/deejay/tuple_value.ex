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
  @type tuple_value :: {atom, atom, any}
  
  @spec tuple_value(atom, any) :: tuple_value
  def tuple_value(atom, any) do
    {atom, _typeof(any), any}
  end

  @spec attribute(tuple_value) :: atom
  def attribute(tuple_value) do
    elem(tuple_value, 0)
  end

  @spec type(tuple_value) :: atom
  def type(tuple_value) do
    elem(tuple_value, 1)
  end

  @spec value(tuple_value) :: atom
  def value(tuple_value) do
    elem(tuple_value, 2)
  end

  @spec _typeof(any) :: atom
  def _typeof(value) do
    cond do
      is_bitstring(value) -> :string
      is_boolean(value)   -> :boolean
      is_float(value)     -> :float
      is_integer(value)   -> :integer
      true                -> :any
    end
  end

end

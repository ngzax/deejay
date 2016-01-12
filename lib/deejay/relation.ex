defmodule DeeJay.Relation do

  @moduledoc """
  
  """
  
  @typedoc """
    A relation value (relation for short) consists of a heading and a body, where:
      * The heading of r is The complete set of attributes of r. 
      * The body of r is a set of tuples, 
          all having that same heading (and the cardinality of that set is the cardinality of r).  
  """
  
  @type relation :: [heading: list]
  
  # @spec relation(atom, any) :: relation
  def relation(list) do
    [heading: list]
  end

  # @spec attributes(relation) :: list
  def attributes(relation) do
   relation[:heading]
  end

  # @spec cardinality(relation) :: integer
  def cardinality(relation) do
   length(relation[:heading])
  end

  # @spec heading(relation) :: list
  def heading(relation) do
   relation[:heading]
  end

end

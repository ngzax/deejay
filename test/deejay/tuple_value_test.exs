defmodule DeeJayTupleValueTest do
  use ExUnit.Case
  doctest DeeJay.TupleValue
  
  import DeeJay.TupleValue
  
  test "Is represented as a 3-values normal Elixir tuple" do
    assert tuple_value(:s_id, 1) == {:s_id, :integer, 1}
  end
  
  test "The first element is called the attribute" do
    assert attribute(tuple_value(:s_id, 1)) == :s_id
  end
  
  test "The first element is called the attribute, passing a 3-value tuple" do
    assert attribute({:s_id, :integer, 1}) == :s_id
  end
  
  test "The second element is called the value" do
    assert value(tuple_value(:s_id, 1)) == 1
  end
  
  test "The second element is called the value, passing a 3-value tuple" do
    assert value({:s_id, :integer, 1}) == 1
  end
  
  test "The type is inferred from the value" do
    assert type(tuple_value(:s_id, 1))       == :integer
    assert type(tuple_value(:s_id, 1.1))     == :float
    assert type(tuple_value(:s_id, "Magic")) == :string
    assert type(tuple_value(:s_id, true))    == :boolean
  end
  
end

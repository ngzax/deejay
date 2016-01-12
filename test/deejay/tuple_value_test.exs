defmodule DeeJayTupleValueTest do
  use ExUnit.Case
  doctest DeeJay.TupleValue
  
  import DeeJay.TupleValue
  
  test "Can return a normal Elixir tuple" do
    assert tuple_value(:s_id, 1) == {:s_id, 1}
  end
  
  test "The first element is called the attribute" do
    assert attribute(tuple_value(:s_id, 1)) == :s_id
    assert attribute({:s_id, 1}) == :s_id
  end
  
  test "The second element is called the value" do
    assert value(tuple_value(:s_id, 1)) == 1
    assert value({:s_id, 1}) == 1
  end
  
end

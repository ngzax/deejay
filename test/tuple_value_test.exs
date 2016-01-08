defmodule TupleValueTest do
  use ExUnit.Case
  doctest TupleValue
  
  test "Can return a normal Elixir tuple" do
    assert TupleValue.new(:s_id, 1) == {:s_id, 1}
  end
  
  test "The first element is called the attribute" do
    assert TupleValue.attribute(TupleValue.new(:s_id, 1)) == :s_id
    assert TupleValue.attribute({:s_id, 1}) == :s_id
  end
  
  test "The second element is called the value" do
    assert TupleValue.value(TupleValue.new(:s_id, 1)) == 1
    assert TupleValue.value({:s_id, 1}) == 1
  end
  
end

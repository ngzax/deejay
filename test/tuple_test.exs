defmodule TupleTest do
  use ExUnit.Case
  doctest Tuple
  
  test "Can return a normal Elixir tuple" do
    assert Tuple.new(:s_id, 1) == {:s_id, 1}
  end
  
  test "The first element is called the attribute" do
    assert Tuple.attribute(Tuple.new(:s_id, 1)) == :s_id
  end
  
  test "The second element is called the value" do
    assert Tuple.value(Tuple.new(:s_id, 1)) == 1
  end
  
end

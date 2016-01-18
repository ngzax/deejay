defmodule DeeJayRelationTest do
  use ExSpec, async: true
  doctest DeeJay.Relation
  
  import DeeJay.Relation 
  
  test "a Relation begins with list of its Attributes, called its Heading" do
    assert heading(relation(["S#", "SNAME", "STATUS", "CITY"])) == ["S#", "SNAME", "STATUS", "CITY"]
  end
  
  test "a Relation's Attributes can be returned directly" do
    assert attributes(relation(["S#", "SNAME", "STATUS", "CITY"])) == ["S#", "SNAME", "STATUS", "CITY"]
  end
  
  test "a Relation's cardinality is the number of attributes" do
    assert cardinality(relation(["S#", "SNAME", "STATUS", "CITY"])) == 4
  end
  
end

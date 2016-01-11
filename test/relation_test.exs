defmodule RelationTest do
  use ExUnit.Case
  doctest Relation
  
  test "a Relation begins with list of its Attributes, called its Heading" do
    assert Relation.heading(Relation.new(["S#", "SNAME", "STATUS", "CITY"])) == ["S#", "SNAME", "STATUS", "CITY"]
  end
  
  test "a Relation's Attributes can be returned directly" do
    assert Relation.attributes(Relation.new(["S#", "SNAME", "STATUS", "CITY"])) == ["S#", "SNAME", "STATUS", "CITY"]
  end
  
  test "a Relation's cardinality is the number of attributes" do
    assert Relation.cardinality(Relation.new(["S#", "SNAME", "STATUS", "CITY"])) == 4
  end
  
end

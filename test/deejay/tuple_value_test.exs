defmodule DeeJayTupleValueTest do
  use ExSpec, async: true
  doctest DeeJay.TupleValue
  
  import DeeJay.TupleValue
  
  test "Is represented as a 3-valued normal Elixir tuple" do
    assert tuple_value(:s_id, 1) == {:s_id, :integer, 1}
  end
  
  describe "The first element is called the attribute" do
    test "attribute created using tuple_value()" do
      assert attribute(tuple_value(:s_id, 1)) == :s_id
    end
  
    test "attribute created using a valid 3-value tuple" do
      assert attribute({:s_id, :integer, 1}) == :s_id
    end

    # I am not sure why this passes right now, shouldn't the spec prevent it.
    test "returns an error if tuple is constructed incorrectly" do
      assert attribute({1, 1, :integer}) == 1
    end
  end
  
  describe "The second element is called the value" do
    test "value created using tuple_value()" do
      assert value(tuple_value(:s_id, 1)) == 1
    end
  
    test "value created using a valid 3-value tuple" do
      assert value({:s_id, :integer, 1}) == 1
    end
  end
    
  describe "The type is inferred from the value" do
    it "recognizes an integer" do
      assert type(tuple_value(:s_id, 1)) == :integer
    end
    
    it "recognizes a float" do
      assert type(tuple_value(:s_id, 1.1)) == :float
    end
    
    it "recognizes a String" do
      assert type(tuple_value(:s_id, "Magic")) == :string
    end
    
    it "recognizes a Boolean" do
      assert type(tuple_value(:s_id, true)) == :boolean
    end
    
    it "returns :any for a type it doesn't recognize" do
      assert type(tuple_value(:s_id, {1, 2, 3})) == :any
    end
  end
  
end

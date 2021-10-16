defmodule App.CalculatorTest do
  use ExUnit.Case, async: true

  @moduletag :math

  setup do
    {:ok, tiago: 2, davi: 6}
  end

  test "should return 4 when multiply 2 by 2", %{tiago: valor} do 
    assert App.Calculator.multiply(2, valor) == 4
  end

  test "should return 6 when multiply 2 by 3", %{davi: valor} do
    assert App.Calculator.multiply(2, 3) == valor
  end

  test "should return nil when multiply 2 by nil" do
    assert App.Calculator.multiply(2, nil) == nil
  end

  test "should return nil when multiply nil by 2" do
    assert App.Calculator.multiply(nil, 2) == nil 
  end

  @tag :refuted
  test "should return 10 when multiply 2 by 4" do
    refute App.Calculator.multiply(2, 4) == 10, "This is an error!!"
  end
end

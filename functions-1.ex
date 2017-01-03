defmodule FunctionsExercise do
  # Sum up to 3 nums or any
  # amount of nums via a List
  def sum(), do: 0
  def sum([]), do: 0
  def sum(a,b), do: a + b
  def sum(a,b,c), do: a + b + c
  def sum(nums) do
    if is_list(nums) do
      hd(nums) + sum(tl(nums))
    else
      nums
    end
  end

  def list_concat(l1, l2), do: l1 ++ l2
  def pair_tuple_to_list(tp), do: Tuple.to_list(tp)
end


# testing
ExUnit.start
ExUnit.configure exclude: :pending,
                 trace: true
defmodule Testing do
  use ExUnit.Case, async: true

  test 'sum' do
    assert FunctionsExercise.sum() == 0
    assert FunctionsExercise.sum(1) == 1
    assert FunctionsExercise.sum(1,2) == 3
    assert FunctionsExercise.sum(1,2,3) == 6
    assert FunctionsExercise.sum([1,2,3]) == 6
    assert FunctionsExercise.sum(10,100,5) == 115
  end

  test 'list_concat' do
    assert FunctionsExercise.
      list_concat([:a, :b], [:c, :d]) == [:a, :b, :c, :d]
  end

  test 'pair_tuple_to_list' do
    assert FunctionsExercise.
      pair_tuple_to_list({ 1234, 5678 }) == [1234, 5678]
  end
end

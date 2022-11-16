# frozen_string_literal: true

# BEGIN
def get_same_parity(arr)
  if arr.size == 0
    return []
  end
  num_1 = arr[0]
  if num_1.even?
    result = arr.filter{|num| num.even?}
  elsif num_1.odd?
    result = arr.filter{|num| num.odd?}
  end
  result
end
# END

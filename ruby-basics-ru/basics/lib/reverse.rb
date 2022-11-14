# frozen_string_literal: true

# BEGIN
def reverse(string)
  array = string.split('')
  result = []
  string.size.times { result << array.pop}
  result.join
end
# END

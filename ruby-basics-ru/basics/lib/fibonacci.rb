# frozen_string_literal: true

# BEGIN
def fibonacci(num)
  if num < 0
    nil
  end
  num <= 1 ? num : fibonacci(num - 1 ) + fibonacci(num - 2)
end
# END

# frozen_string_literal: true

# BEGIN
def fizz_buzz(start, stop)
  if start > stop
    return nil
  end
  result = []
  start.upto stop do |number|
    if number % 3 == 0 && number % 5 == 0
      result << 'FizzBuzz'
    elsif number % 3 == 0
      result << 'Fizz'
    elsif number % 5 == 0
      result << 'Buzz'
    else
      result << number.to_s
    end
  end
  result.join(' ').to_s
end
# END

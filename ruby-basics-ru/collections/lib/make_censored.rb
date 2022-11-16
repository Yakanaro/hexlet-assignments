# frozen_string_literal: true

# rubocop:disable Style/For

def make_censored(text, stop_words)
  # BEGIN
  arr = text.split(' ')
  new_arr = []
  arr.each do |item|
    if stop_words.include?(item)
      new_arr << '$#%!'
    else
      new_arr << item
    end
  end
  new_arr.join(' ')
  # END
end

# rubocop:enable Style/For

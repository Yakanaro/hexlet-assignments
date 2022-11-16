# frozen_string_literal: true

# BEGIN
def anagramm_filter(word, arr)
  sample = word.split('').sort.join('')
  result = arr.filter{|coll| coll.split('').sort.join('') == sample}
  result
end

puts anagramm_filter('abba', %w[aabb abcd bbaa dada])
# END

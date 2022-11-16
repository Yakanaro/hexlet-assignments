# frozen_string_literal: true

# rubocop:disable Style/For
# BEGIN
def build_query_string(obj)
  new_obj = obj.to_a.sort.to_h
  result = []
  new_obj.each do |keys, value|
    result << "#{keys}=#{value}"
  end
  result.join('&')
end

# END
# rubocop:enable Style/For

# frozen_string_literal: true

# BEGIN
def compare_versions(ver1, ver2)
  new_ver1 = ver1.to_s.partition('.')
  new_ver2 = ver2.to_s.partition('.')
  if new_ver1[0].to_i > new_ver2[0].to_i || new_ver1[2].to_i > new_ver2[2].to_i
    1
  elsif new_ver1[0].to_i < new_ver2[0].to_i || new_ver1[2].to_i < new_ver2[2].to_i
    -1
  else
    0
  end
end

puts compare_versions('0.2', '0.12')
# END
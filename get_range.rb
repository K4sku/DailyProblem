def get_range(arr, target)
  output = []
  arr.each_with_index { |x, i| output << i if x == target }
  if output.any?
    [output[0], output[-1]]
  else
    [-1, -1]
  end
  # output.any? ? [output[0], output[-1]] : [-1, -1]
end

input_table = [1, 3, 3, 5, 7, 8, 9, 9, 9, 15].freeze
target = 12
# Output: [6,8]

print get_range(input_table, target)
puts

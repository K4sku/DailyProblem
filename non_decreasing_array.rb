def non_decreasing_array?(input_table)
  modify_counter = 0
  input_table_size = input_table.size - 1
  input_table_size.times do |i|
    modify_counter += 1 if input_table[i] > input_table[i + 1]
    return false if modify_counter >= 2
  end
  true
end

# You are given an array of integers in an arbitrary order.
# Return whether or not it is possible to make the array non-decreasing by
# modifying at most 1 element to any value.
# We define an array is non-decreasing if array[i] <= array[i + 1]
# holds for every i (1 <= i < n).

# Example:
# [13, 4, 7] should return true, since we can modify 13 to any value 4 or less,
# to make it non-decreasing.
# [13, 4, 1] however, should return false,
# since there is no way to modify just one element
# to make the array non-decreasing.
# Can you find a solution in O(n) time?

input_table = [13, 4, 7]
input_table2 = [13, 4, 1]
print non_decreasing_array?(input_table)
puts
print non_decreasing_array?(input_table2)
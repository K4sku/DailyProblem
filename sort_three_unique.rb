def sortThreeUnique(inp)
  x = 0
  inp.size.times do
    case inp[x]
    when 1
      inp.delete_at(x)
      inp.unshift(1)
    when 2
      x += 1
      next
    when 3
      inp.delete_at(x)
      inp.push(3)
    else
      next
    end
  end
  inp
end

input = [3, 3, 2, 1, 3, 2, 1]
# output = [1, 1, 2, 2, 3, 3, 3]

print sortThreeUnique(input)
puts
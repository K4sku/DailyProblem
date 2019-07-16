def getRange(arr, target)
  output=[-1, -1]

  initLength = arr.length
  initLength.times.with_index do |x, i|
    if arr.pop == target
      output[1] = initLength - i -1
      break
    end
  end

  secLength = arr.length
  initLength.times.with_index do |x, i|
    if arr.shift == target
      output[0] = i
      break
    end
  end

  output
end


A = [1,3,3,5,7,8,9,9,9,15]
target = 9
# Output: [6,8]
getRange(A, target)

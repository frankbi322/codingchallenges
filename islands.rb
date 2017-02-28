def islands(arr)
  count = 0
  height = 0
  while height < arr.length
    width = 0
    while width < arr.length
      if arr[height][width] == 1
        count += 1
        arr = visit(arr, height, width)
      end
      width +=1
    end
    height +=1
  end
  count
end

def visit(arr, height, width)
  return nil if arr[height][width] != 1
  arr[height][width] = 'x'
  visit(arr, height + 1, width) unless (height + 1) > arr.length - 1
  visit(arr, height - 1, width) unless (height - 1) < 0
  visit(arr, height, width + 1) unless (width + 1) > arr.length - 1
  visit(arr, height, width - 1) unless (width - 1) < 0
  return arr
end

puts islands([
  [1,0,1],
  [0,1,1],
  [1,0,1]
  ])

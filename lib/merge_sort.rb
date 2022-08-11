def merge_sort(arr)
  if arr.length == 1
    return 
  end

  n = arr.length/2

  left = arr.slice(0, n)
  right = arr.slice(n, arr.length)
  merge_sort(left)
  merge_sort(right)
  sort(left, right, arr)
end

def sort(left, right, arr)
  i = 0
  j = 0
  k = 0
  while i < left.length && j < right.length
    if left[i] <= right[j]
      arr[k] = left[i]
      i += 1
    elsif left[i] >= right[j]
      arr[k] = right[j]
      j += 1
    end
    k += 1
  end
  while i < left.length
    arr[k] = left[i]
    i += 1
    k += 1
  end

  while j < right.length
    arr[k] = right[j]
    j += 1
    k += 1
  end
   arr
end


arr = [13, 12, 11, 8, 15, 14, 14, 18, 29, 99]
p merge_sort(arr)
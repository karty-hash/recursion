def fibs(num, arr =[])
  i = 0
  while i < num
    arr << 0 if i == 0
    arr << 1 if i == 1  
    arr << arr[i-1] + arr[i-2] if i > 1
    i += 1
  end
  arr
end

def  fibs_rec(num, arr= [])
  arr << 0 if num == 1
  arr << 0 && arr << 1 if num == 2
  fibs_rec(num-1, arr) && arr << arr[-2] + arr[-1] if num > 2
  arr
end

p fibs(10)
p fibs_rec(10)

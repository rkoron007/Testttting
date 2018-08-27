def recur_range(first_num,last_num)
  if last_num <= first_num
    return []
  else
    return [first_num] + range(first_num + 1, last_num)
  end
end

def iter_sum(arr)
  arr.reduce(:+)
end

def recur_sum(arr)
  if arr.length <= 1
    return arr[0]
  else
    return arr[0] + recur_sum(arr[1..-1])
  end
end

def recur_exp_one(b,n)
  if n == 0
    return 1
  else
    return b * recur_exp_one(b, n - 1)
  end
end

def recur_exp_two(b,n)
  if n == 0
    return 1
  elsif n.odd?
    b * (recur_exp_two(b, (n-1) / 2) ** 2)
  else
    recur_exp_two(b, n/2) ** 2
  end
end

def deep_dup(arr)
  if arr.length == 1
    return arr
  elsif arr.class != Array
    return [arr]
  else
    [arr[0]] + deep_dup(arr[1..-1])
  end
end
    

def fib(n)
  return [1] if n == 1
  return [1, 1] if n == 2 
  fib(n - 1) + [fib(n - 1).last + fib(n - 2).last]
end

def bsearch(array, target)
  pivot = array.length / 2
  return nil if array.length == 0
  
  if array[pivot] == target
    return pivot
  elsif target < array[pivot]
    return bsearch(array.take(pivot), target)
  elsif target >= array[pivot]
    return pivot + bsearch(array.drop(pivot), target)
  end  
end


def merge_sort(arr)
  if arr.length <= 1
    return arr
  else
    left = arr.take(arr.length / 2)
    right = arr.drop(arr.length / 2)
    merge(merge_sort(left), merge_sort(right))
  end
end 

def merge(arr1, arr2)
  p arr1
  p arr2
  
  new_arr = []
  new_arr1 = arr1.dup
  new_arr2 = arr2.dup
  value = arr1.first <=> arr2.first
  
  if value == -1
    until new_arr1.empty? && new_arr2.empty?
      new_arr.push(new_arr1.shift)
      new_arr.push(new_arr2.shift)
    end
  else
    until new_arr2.empty? && new_arr1.empty?
      new_arr.push(new_arr2.shift)
      new_arr.push(new_arr1.shift)
    end
  end
  
  new_arr.compact
end

def subsets(arr)
  if arr == []
    return [[]]
  else
    last_call = [arr] + subsets(arr[0..-2])
    
  end
end

# def subsets(arr)
#   if arr == []
#     return [arr]
#   else
#     result = []
#     arr.length.times {|i| result << (subsets(arr[1..-1]) << arr[0]) }
#     result
#   end
# end
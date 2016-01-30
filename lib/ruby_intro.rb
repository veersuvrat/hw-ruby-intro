# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  rtrn_sum = 0
  arr.each do |each_baby|
    rtrn_sum += each_baby
  end
  return rtrn_sum
end

def max_2_sum arr
  # YOUR CODE HERE
  array_length = arr.length
  if array_length == 0
    return 0
  elsif array_length == 1
    return arr[0]
  end
  x = arr[0]
  y = arr[1]
  if x > y
    temp = x
    x = y
    y = temp
  end
  i = 2
  while i < array_length
    if arr[i] > y
      x = y
      y = arr[i]
    elsif arr[i] > x
      x = arr[i]
    end
    i += 1
  end
  return x + y
end

def sum_to_n? arr, n
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end

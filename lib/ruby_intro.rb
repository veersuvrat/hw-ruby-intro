# When done, submit this entire file to the autograder.

# Partners:
# Hamza Ahmed
# Veersuvrat Rajpal

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
  if arr.length < 2
    return false
  end
  require 'set'
  elems = Set.new
  arr.each do |each_baby|
    elems.add(each_baby)
  end
  arr.each do |each_baby_again|
    if (elems.include? (n - each_baby_again)) && ((n - each_baby_again) != each_baby_again)
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if (s =~ /\A[^aeiouAEIOU\W]/)
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (s =~ /[^01]/ || s == "")
    return false
  end
  value = s.to_i(2)
  if value % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn, price)
    if isbn == "" || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  def price_as_string
    return sprintf('$%.2f', @price)
  end
end
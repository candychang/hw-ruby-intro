# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  curr = 0
  if arr.empty?
    curr
  else
    arr.each { |a| curr += a }
    curr
  end
end

def max_2_sum arr
  if arr.empty?
    0
  elsif arr.size == 1
    arr[0]
  else
    max = arr.max(2)
    sum(max)
  end
end

def sum_to_n? arr, n
  if arr.empty?
    false
  else
    newarr = arr.combination(2).map { |a| sum(a) }
    newarr.include?(n)
  end
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  s.match(/^[b-df-hj-np-tv-z]/i)
end

def binary_multiple_of_4? s
  if s.match(/^(0|1)+$/)
    s.match(/^0$/) or s.match(/(0{2,})$/)
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    unless !isbn.empty?
      raise ArgumentError.new("please provide an ISBN")
    end
    
    unless price > 0
      raise ArgumentError.new("price must be greater than 0")
    end
    
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$%.2f" % self.price
  end
end

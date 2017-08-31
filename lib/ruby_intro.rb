# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce(0, :+)
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  end

  a, b = arr[0..1]
  for elem in arr[2..-1]
    if elem > a
      a = elem
    elsif elem > b
      b = elem
    end
  end

  return a + b
end

def sum_to_n? arr, n
  arr = arr.sort
  for i in 0...arr.length
    a = arr[i]
    for j in (i + 1)...arr.length
      b = arr[j]
      if a + b == n
        return true
      end
      break if a + b > n
    end
  end
  return false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  /^[a-z]/i.match(s) && /^[^aeiou]/i.match(s)
end

def binary_multiple_of_4? s
  /^(0|[01]*00)$/.match(s) != nil
end

# Part 3

class BookInStock
  def isbn
    @isbn
  end

  def isbn=(isbn)
    raise ArgumentError if isbn.length == 0
    @isbn = isbn
  end

  def price
    @price
  end

  def price=(price)
    raise ArgumentError if price <= 0
    @price = price
  end

  def price_as_string
    '$%.2f' % price
  end

  def initialize(isbn, price)
    self.isbn = isbn
    self.price = price
  end
end

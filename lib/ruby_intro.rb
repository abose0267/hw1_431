# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  value = 0
  arr.each { |i|
     value += i
  }
  # puts value
  return value

end

def max_2_sum(arr)
  # YOUR CODE HERE

temp = arr.max(2)
val  = 0
temp.each { |i|
 val +=i
}
return val
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE

  arr.each { |i|
  val = number-i
  count = 0
  # puts
  # puts "#{number} - #{i} = #{val}"
  # puts arr.include? val
  # puts 
  if arr.include? val
    if val != i
      return true
    end
    return false
  end
}
return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  # puts "Hello " + name
  return "Hello, " + name
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  sadVals = "AaEeIiOoUuYy!@#$%^&*()_-+="
  # puts 
  # puts string[0]
  # puts

  if string[0] != nil
    # puts "NOt nil"
    if sadVals.include?string[0] 
      return false
    end
    return true
  end

  return false

end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  # puts
  # puts "String is #{string}"
  # puts string.to_i(2)
  # puts string.to_i(2) % 4
  # puts
  if string == ""
    return false
  end
  vals = string.split('')
  vals.each { |i|

  if i != '1' && i != '0'
    # puts "THis string is not binary"
    return false
  end

  }
  if string.to_i(2) % 4 == 0
    return true
  end
  return false
# puts

end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  def initialize(isbn, price)
    if isbn == "" || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

##Getter and Setter methods 
  def isbn()
    return @isbn
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price()
    return @price
  end

  def price=(price)
    @price = price
  end

  def price_as_string()
    return "$" + sprintf("%.2f", @price)
  end
end

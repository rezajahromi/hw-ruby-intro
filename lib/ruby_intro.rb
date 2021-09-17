# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length()==0
    out = 0
  elsif arr.length()==1
    out = arr[0]
  else
    out = arr.sort[-2]+arr.sort[-1]
  end
  out
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  def sum_to_n?(array,n)
  	out = false
  	if array.length  > 1
  		for i in 1..array.length  - 1
  			for j in 0..i - 1
  				if array[j] + array[i] == n
  					out = true
  					break
  				end
  			end
  		end
  	end
  	return out
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  check = /\A[BCDFGJKLMNPQSTVXZHRWYbcdfgjklmnpqstvxzhrwy]/
  !(s=~check).nil?
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (s.to_s =~ /\b[01]+\b/)
    if (s.to_i % 4 == 0)
      return true
    end
  end
  return false
    
end

# Part 3

class BookInStock
# YOUR CODE HERE
   def initialize(isbn,price)
		@isbn=isbn
		@price=price
		# exeption 
		if @isbn.empty? || @price <= 0 
			raise ArgumentError
		end
	end
	
	attr_accessor :isbn
	attr_accessor :price

	def price_as_string
		"$#{'%.2f' %  @price}"
	end

end

# puts starts_with_consonant? '_eza'

# book1 = BookInStock.new('123_32', 25000)
# puts book1.isbn
# puts book1.price_as_string

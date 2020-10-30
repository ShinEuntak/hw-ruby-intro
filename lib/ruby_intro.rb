# When done, submit this entire file to the autograder.

# Part 1
def sum arr
   sum2=0
   arr.each do |x|
       sum2 += x
    end
    return sum2
end

def max_2_sum arr
  if arr.length > 1
        arr.sort!.reverse!
        return arr[0]+arr[1]
  elsif arr.length == 0 
        return 0
  else
        return arr[0]
  end
end

def sum_to_n? arr, n
  result = 0
  arr.each{|x| 
        result = n - x
       arr.each{|y|
            if result == y && x != y
               return true
            end
       }
   }
   return false
end


# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
    text = s.split("")
    if s.length == 0 || text[0] == "#"
        return false
    end
    alphabet = ['a','e','i','o','u','A','E','I','O','U']
    alphabet.each { |x|
        if text[0] == x
            return false
        end
    }
    return true
end 

def binary_multiple_of_4? s
  # YOUR CODE HERE
     if s.length == 0
      return false
     end
   if s.scan(/\D/).empty? ==false
     return false
   end
   if(s.to_i%4==0)
     return true
   end
   return false
end
# Part 3

class BookInStock
  attr_reader :isbn, :price
  attr_writer :isbn,  :price
 def initialize(isbn,price)
   if isbn == '' || price <=0
     raise ArgumentError
   end
   @isbn = isbn
   @price = price
 end
 
 def price_as_string
   return  format("$%.2f", @price)
 end
end
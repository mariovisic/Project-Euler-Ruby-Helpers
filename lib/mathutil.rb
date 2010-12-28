class MathUtil
  
  # Determines if a number is prime
  def self.prime?(number)
    num_loops = Math.sqrt(number)
    return false if number < 1
    for i in 2..num_loops
      return false if (number % i == 0) && (number != i)
    end
    for i in 2..(number / num_loops)
      return false if number % i == 0
    end
    true
  end
  
  # Determines if a number of a palindrome
  def self.is_palindrome?(number)
    number.to_s.reverse == number.to_s
  end
  
  # Returns the Factorial for the given number
  def self.factorial(number)
    return 1 if number == 0
    (1..number).inject(:*)
  end
  
  # Returns an array with all of the rotations available for the given number
  def self.rotations(number)
    
    numbers_array = number.to_s.split('')
    rotations     = [numbers_array.to_s.to_i]
    
    (numbers_array.length - 1).times do
      first = numbers_array.shift
      numbers_array.push(first)
      rotations << numbers_array.to_s.to_i
    end
    
    rotations
    
  end
  
end

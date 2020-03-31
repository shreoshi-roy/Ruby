##Find sum of all numbers in an array

# Iterative approach using for loop or each
def sum1(array)
  sum = 0
  array.each do |number|
    sum += number
  end
  sum
end

sum1([5, 8, 15, 20, 24, 30])


# Recursive approach
def sum2(array)
  if array? # Base case
    return 0

  else
    Sum = array.pop
    return Sum + sum2(array)
  end
end

sum2([5, 8, 15, 20, 24, 30]) 

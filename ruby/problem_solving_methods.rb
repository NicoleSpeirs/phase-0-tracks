def search (array,number)
  array.each_with_index do |num,index|
    if num == number
      return index
    end
  end
  nil
end

# arr = [42, 89, 23, 1]
# p search(arr, 1) #=> 3
# p search(arr, 24) #=> nil


def fibonacci( n )
  return [0] if n == 0
  return [0,1] if n == 1
  fib = [0,1]
  (n-2).times.each do
    fib << fib[-2] + fib[-1]
  end
  fib
end

p fibonacci(0) #=> [0]
p fibonacci(1) #=> [0,1]
p fibonacci(6) #=> [0,1,1,2,3,5]
p fibonacci(100) #=> 218922995834555169026
# => 5
#OMG THIS WAS HARD!!!!!

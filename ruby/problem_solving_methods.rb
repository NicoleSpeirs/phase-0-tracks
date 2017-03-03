def search (array,number)
  array.each_with_index do |num,index|
    if num == number
      return index
    end
  end
  nil
end

arr = [42, 89, 23, 1]
p search(arr, 1) #=> 3
p search(arr, 24) #=> nil


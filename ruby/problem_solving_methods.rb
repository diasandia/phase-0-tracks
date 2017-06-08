#5.6 Mandatory Pairing: Solving Problems with Data Structures

## RELEASE 0
def search_array(arr,num)
  counter = 0

 arr.each do |item|
    if item != num
      counter += 1
    elsif item == num
      break
    end

   if counter == arr.length
      counter = nil
    end
  end

 counter
end

arr = [1, 42, 89, 23, 45]
p search_array(arr, 45)

# RELEASE 1

def fib(num)
  array = [0,1]

 if num == 0
    array = [0]
  elsif num == 1
    array = [0,1]
  else
    pos = 2
    until array.length == num
      array[pos] = array[pos-2] + array[pos-1]
      pos += 1
    end
  end

 if array.length > 10
    array.last
  else
    array
  end

end

p fib(0)
p fib(1)
p fib(2)
p fib(6)
p fib(100)

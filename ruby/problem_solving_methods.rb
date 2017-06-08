#5.6 Mandatory Pairing: Solving Problems with Data Structures

# RELEASE 0
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

# RELEASE 2

#Pseudocoding using Bubble Sort

# 1. Determine the length of array
# 2. Initialize loop for swaps
# 3. Include a swap flag to notify program if swap is true or false
# 4. Iterate array until last value of array
# 5. If value is out of order swap them
# 6. Make a note that the swap occurred
# 7. Swap is complete once the method returns a sorted version of the array

def bubble_sort(arr)
  size = arr.length
  swap = true
  until swap == false
    swap = false
    arr.each do |repeat|
      if arr[arr.index(repeat)+1] != nil

      if arr[arr.index(repeat)] > arr[arr.index(repeat)+1]
        small_value =  arr[arr.index(repeat)+1]
        small_value

        arr[arr.index(repeat)+1] = arr[arr.index(repeat)]
        arr[arr.index(repeat)+1]
        arr[arr.index(repeat)] = small_value

      swap = true
      end
      end
    end
  end
  arr
end


arr = [100,22,11,92,22,199, 66, 78]
p bubble_sort(arr)


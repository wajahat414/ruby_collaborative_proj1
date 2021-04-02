def bubble_sort(array)
  size = array.length
    for i in 0..size - 1 do
      for j in 0..size - 2 do
        print 'i=', array[i], 'j=', array[j], '\n'
          if array[j] > array[j + 1]
            swap = array[j + 1]
              array[j + 1] = array[j]
              array[j] = swap
          end
      end
    end
return array
end
array = [6,5,11,10,7]
bubble_sort(array)
print array
def bubble_sort_by(array)
  size=array.length
    for i in 0..size - 1 do
      for j in 0..size - 2 do
        print 'i=', array[i],'j=', array[j], '\n';
          if yield(array[j], array[j +1]) > 0
            swap = array[j + 1]
            array[j + 1] = array[j]
            array[j] = swap
          end
      end
    end
  print array
end
bubble_sort_by(['hi', 'hello', 'hey']) do |left, right|
  left.length - right.length
end

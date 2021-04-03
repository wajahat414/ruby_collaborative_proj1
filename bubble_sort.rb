def bubble_sort(array)
  array.each do
    Array(0..array.length - 2).each do |j|
      next unless array[j] > array[j + 1]

      swap = array[j + 1]
      array[j + 1] = array[j]
      array[j] = swap
    end
  end
  array
end
array = [6, 5, 11, 10, 7]
bubble_sort(array)
print array
def bubble_sort_by(array)
  array.each do
    Array(0..array.length - 2).each do |j|
      next unless yield(array[j], array[j + 1]).positive?

      swap = array[j + 1]
      array[j + 1] = array[j]
      array[j] = swap
    end
  end
  print array
  array
end
bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end

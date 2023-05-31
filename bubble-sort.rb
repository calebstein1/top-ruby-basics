#!/usr/bin/env ruby

def bubble_sort(array)
  did_sort = 0
  array.each_with_index do |number, index|
    unless array[index + 1] == nil
      if number > array[index + 1]
        array.insert(index, array[index + 1])
        array.delete_at(index + 2)
        did_sort = 1
      end
    end
  end
  bubble_sort(array) if did_sort == 1
  array
end

p bubble_sort([4,3,78,2,0,2,1,6,4,54,34,76,99,56,100,32])
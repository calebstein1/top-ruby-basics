#!/usr/bin/env ruby

def stock_picker(array)
  indeces = (0..array.length - 1).to_a
  all_combinations = []
  profit = []
  indeces.combination(2) { |combination| all_combinations.push(combination) }
  all_combinations.each { |combination| profit.push(array[combination[1]] - array[combination[0]]) }
  all_combinations[profit.index(profit.max)]
end

p stock_picker([17,17,13,9,5,8,4,2,1])
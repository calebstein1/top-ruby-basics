#!/usr/bin/env ruby

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, array)
  string_arr = string.split
  array.reduce(Hash.new(0)) do |each_substr, substr|
    number_of_matches = string_arr.reduce(0) do |total, current_word|
      total += 1 if current_word.downcase.include?(substr.downcase)
      total
    end
    each_substr[substr] += number_of_matches if string.downcase.include?(substr.downcase)
    each_substr
  end
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
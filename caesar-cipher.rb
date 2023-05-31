#!/usr/bin/env ruby

def caesar_cipher(string, number)
  chars = string.split("")
  chars.map do |char|
    char_num = char.ord
    if (char_num >= 65 && char_num <= 90)
      char_num += number
      char_num -= 26 if char_num > 90
      char_num += 26 if char_num < 65
      char_num.chr
    elsif (char_num >= 97 && char_num <= 122)
      char_num += number
      char_num -= 26 if char_num > 122
      char_num += 26 if char_num < 97
      char_num.chr
    else
      char
    end
  end.join
end

if ARGV[0] == "-d"
  puts caesar_cipher(ARGV[1], ARGV[2].to_i * -1)
else
  puts caesar_cipher(ARGV[0], ARGV[1].to_i)
end
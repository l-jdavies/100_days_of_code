# In this kata, you've to count lowercase letters in a given string and return the letter count in a hash
# with 'letter' as key and count as 'value'. The key must be 'symbol' instead of string
#
# INPUT
# string
#
# OUTPUT
# hash
#
# RULES
# count lowercase letters in a string
# return a hash with the lowercase letter as a symbol (key) and number of times the letter appears in the string as a value
#
# ALGORITHM
# START
# SET count_hsh = {}
# SET char_arr = string.chars
# SET counter = 0
#
# remove duplicate characters from the array
# char_arr.uniq!
# UNTIL counter == char_arr.size
# count_hsh[char_arr[counter].to_sym] = string.count(char_arr[counter])
# counter += 1
# END
#
# count_hsh
# END
require 'byebug'
def letter_count(string)
  count_hsh = {}
  counter = 0

  char_arr = string.chars
  char_arr.uniq!

  loop do
    byebug
    count_hsh[char_arr[counter].to_sym] = string.count(char_arr[counter])

    counter += 1
    break if counter == char_arr.size
  end
  count_hsh
end

letter_count('codewars')

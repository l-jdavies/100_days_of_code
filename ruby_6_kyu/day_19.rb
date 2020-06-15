# In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.
# Rules:
# 1.The input string will always be lower case but maybe empty.
# 2. If the character in the string is whitespace then pass over it as if it was an empty seat.
#
#
# INPUT
# string
#
# OUTPUT
# array of strings
#
# RULES
#
# ALGORITHM
# START
# SET str_array = add strings to this array and return
# SET count = specify which character to transform to uppercase
#
# iterate over string by character and index |char, idx|
#   SET new_str = temp string object, reset to empty string each iteration
#
#   IF `idx` of current `char` equals the `count`
#     add uppercase version of `char` to `new_str`
#   ELSE
#     add `char` to `new_str`
#   END
#
#   add `new_str` to `str_arr`
# END
#
# increment `count` by 1

def wave (str)
  str_arr = []
  count = 0

  str.each_char.with_index do |char, idx|
    next if char == ' '
    str_arr << str[0...idx] + char.upcase + str[(idx + 1)..-1]
  end
  
  str_arr
end 

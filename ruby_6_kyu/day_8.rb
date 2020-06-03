# Given a string of integers, return the number of odd-numbered substrings that can be formed.
#
# INPUT
# string of integers
#
# OUTPUT
# integer
#
# RULES
# return the number of odd numbered substrings that can be formed from the input string of integers
#
# ALGORITHM
# split the string into substrings starting at index position 0
# convert the substrings into an integer
# test if integer is odd. If so, count
# iterate over string until it has been split at all index positions
# return total count of odd integers
#
# START
# SET idx = 0
# SET count = 0
# SET substr_1 = ''
# SET substr_2 = ''
#
# while idx <= str.length
# split str into two substrings at idx position
# transform substrings to integer
# test if integer is odd?
#   if true count += 1
# end
#
# return count
# END

def solve(str)
  idx = 0
  count = 0

  substr_1 = ''
  substr_2 = ''

  loop do
    substr_1 = str[0..idx]
    substr_2 = str[(idx + 1)..-1]

    substr_1.to_i.odd? ? count += 1 : nil 
    substr_2.to_i.odd? ? count += 1 : nil 
  
    idx += 1
    break if idx >= str.length
  end
  count
end



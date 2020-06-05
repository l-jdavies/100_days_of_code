# For a given nonempty string s find a minimum substring t and the maximum number k
# such that the entire string s is equal to t repeated k times.The input string consists of lowercase latin letters
# Your function should return a tuple (in Python) (t, k) or an array (in Ruby and JavaScript)
#
# INPUT
# string
#
# OUTPUT
# array containing two elements - one string and one integer
#
# RULES
# find the smallest substring that when multiplied by an integer, returns the initial string
# return substring and the multiplier
#
# ALGORITHM
# create an array of substrings
# iterate over the array
# multiply each substring by the input str length / substr length
# check if the return value matches the input str
# if yes, add the substr and multiplier to local variable
# for each occassion the substr matches the input str,
# check if the substr is shorter than the one currently assigned to the local variable
# if it is reassign the substr and multiplier local variables
# return array of shortest substr and multiplier
#
# START
# SET substr_multiplier = []
# SET shortest_sub = ''
# SET multiplier = 0
# SET substr = array returned by find_substrings method
#
# iterate over substr array to access each substring element
#   for each element:
#     multiply the substring by (string length / substring length)
#     IF the return value == str
#       compare substring with shortest_sub variable
#       IF current substr is shorter, reassign current substr to local variable and reassign multiplier
#   end
#
# substr_multiplier << shortest_sub
# substr_multiplier << multiplier
# END

# START - substr method
# SET arr_substr = []
# SET idx = 0
# 
# WHILE idx is less than substr length
#   SET upper_range = 1
#
#   WHILE upper_range is less than substr length
#     arr_substr << str[idx..upper_range]
#     increment upper_range by 1
#   END
#   increment idx by 1
# END
# flatten arr_substr from multi-dimensional arr to single dimensional
# END
def find_substrings(str)
  arr_substr = []
  idx = 0

  loop do
    upper_range = idx

    loop do
      arr_substr << str[idx..upper_range]
      upper_range += 1
      break if str[upper_range] == nil
    end
    
    idx += 1
    break if idx >= str.length
  end
  arr_substr.flatten
end

def f(str)
  substr_multiplier = []
  shortest_sub = '          '
  multiplier = 0

  substr = find_substrings(str)

  substr.each do |element|
    if element * (str.length / element.length) == str
      if element.length < shortest_sub.length
        shortest_sub = element
        multiplier = str.length / element.length
      end
    end
  end
  substr_multiplier << shortest_sub
  substr_multiplier << multiplier
end

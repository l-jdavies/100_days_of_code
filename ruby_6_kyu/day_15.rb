# Write a method that takes a string as an argument and groups the number of time each character
# appears in the string as a hash sorted by the highest number of occurrences.
#
# The characters should be sorted alphabetically 
# You should ignore spaces, special characters and count uppercase letters as lowercase ones.
#
# INPUT
# string of letters, numbers and characters
#
# OUTPUT
# hash
# keys are the number of occurences; values are array of alphanumeric characters
#
# RULES
# count the number of times each letter and number appears in the string
# save the results in a hash
# hash keys are counts and hash values are array of alphanumeric characters
#
# hash keys should sorted in descending order
# value arrays should also be sorted alphabetically
# count upper and lower case letters as the same character
# ignore special characters
#
# ALGORITHM
# initialize the return hash
# transform the string to downcase
# create an array of lowercase alphabet and integers 0-9
# iterate over each character:
#   - check if it's included in the alphanumeric array
#       - if it isn't, move to next char 
#   - if it is, count the number of times the character appears in the input string
#   - save the count to a local variable
#   - check if the count is already a key in the return hash
#     - if true: add character to the value array
#     - if false: create new key-value pair
#
# iterate over the hash to access each value array
# sort the array
# sort the hash in descending key value
#
# START
# SET count_hsh = {}
# SET alphanumeric = array of alphanumeric characters
#
# downcase the input string
#
# iterate over input string
#   IF `alphanumeric` does not include the character
#     next
#   ELSE
#     count = number of times character is included in input string
#     add_to_hash(count_hsh, count, character)
#   END
# 
# sort_hsh_keys(count_hsh)
# sort_hsh_values(count_hsh)
# END

def get_char_count(str)
  count_hsh = {}
  alphanumeric = ('a'..'z').to_a + ('0'..'9').to_a

  str.downcase!
  
  characters = str.chars.uniq

  characters.each do |char|
    if alphanumeric.include?(char) == false
      next
    else
      count = str.count(char)
      add_to_hsh(count_hsh, count, char)
    end
  end
  count_hsh = sort_hsh_keys(count_hsh)
  sort_hsh_values!(count_hsh)
end

def add_to_hsh(hsh, num, letter)
  if hsh.key?(num)
    hsh[num].push(letter)
  else
    hsh[num] = [letter]
  end
end

def sort_hsh_keys(hsh)
  Hash[hsh.sort_by { |k, _| k }.reverse]
end

def sort_hsh_values!(hsh)
  hsh.each do |_, v|
    v.sort!
  end
end

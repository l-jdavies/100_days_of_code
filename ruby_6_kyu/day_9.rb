# Complete the function that takes an array of words.
# You must concatenate the nth letter from each word to construct a new word which should be returned as a string, where n is the position of the word in the list.
#
# INPUT
# array of strings
#
# OUTPUT
# string
#
# RULES
# for each word in the array of strings, take the character at index position n
# where n is the index position of the string in the array
# create a new string out of the characters
#
# ALGORITHM
# iterate over the array
# determine the index of the current string in the array
# assign index to local variable
# access character at the saved index position 
# add the character to a new string
# return new string
#
# START
# SET new_str = ''
#
# iterate over strings in the array, accessing both the object and index
# new_str << object[index]
#
# RETURN new_str
# END

def nth_char(arr)
  new_str = ''

  arr.each_with_index do |word, idx|
    new_str << word[idx]
  end

  new_str
end

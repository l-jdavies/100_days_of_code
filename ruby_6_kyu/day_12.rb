# Write a function that takes in a string of one or more words
# and returns the same string, but with all five or more letter words reversed
# Strings passed in will consist of only letters and spaces.
# Spaces will be included only when more than one word is present
# 
# INPUT
# string
#
# OUTPUT
# string
#
# RULES
# if a string element contains 5 or more letters the element should be reversed
# if less than 5 return original word
# retain original case
# strings will only contain letters and spaces
#
# ALGORITHM
# split the string into an array of strings
# iterate over the array
# if the length of word is 5 or more, reverse the string
# if <5 do nothing
# join the array back into a string and return
#
# START
# SET words = string split into words
#
# iterate over each word element in the array
# IF element size >= 5
#   reverse element
# ELSE do nothing
#
# join the array into a string
# END

def spinWords(str)
  words = str.split.map do |word|
    if word.size >= 5
      word.reverse
    else
      word
    end
    end
  words.join(' ')
end


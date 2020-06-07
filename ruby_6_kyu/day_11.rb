# A pangram is a sentence that contains every single letter of the alphabet at least once
# For example, the sentence "The quick brown fox jumps over the lazy dog"
# is a pangram, because it uses the letters A-Z at least once (case is irrelevant).
#
# Given a string, detect whether or not it is a pangram
# Return True if it is, False if not.
# Ignore numbers and punctuation.
#
# INPUT
# string
#
# OUTPUT
# boolean
#
# RULES
# return true if the input string contains every letter of the alphabet
# else return false
# ignore integers and symbols in input string
#
# ALGORITHM
# create an array containing all letters of the alphabet
# iterate over each character in the alphabet array
# for each character in the alphabet array, check if it's included in the input string
# return false if an alphabet character isn't included
# otherwise return true
#
# START
# SET alphabet_arr = all letters of alphabet
# SET str_arr = transform input string to lowercase and split into characters
#
# iterate over alphabet_arr
#   for each element in alphabet_arr check if it's included in str_arr
#   return false if check == false
# end
# return true 
# END

def panagram?(string)
  alphabet_arr = ('a'..'z').to_a
  
  alphabet_arr.each do |element|
    return false if string.downcase.include?(element) == false
  end

  true
end

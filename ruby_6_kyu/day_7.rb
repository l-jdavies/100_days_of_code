# The vowel substrings in the word codewarriors are o,e,a,io. 
# The longest of these has a length of 2. 
# Given a lowercase string that has alphabetic characters only and no spaces, return the length of the longest vowel substring
#
# INPUT
# string
#
# OUTPUT
# integer
#
# RULES
# find the longest chain of vowels
# return length of chain as integer
# string is one word
# all lowercase
# no numbers of symbols
#
# ALGORITHM
# split the string into characters
# iterate over the characters
# if a character is a vowel, check the next character
# count the number of characters that are vowels until the next character is a consonant
# return the largest count
# 
# START
# SET vowels = ('a'..'z').to_a
# SET longest_chain = 0
# SET current_chain = 
# SET idx = 0
# 
# chars = str.chars
# loop do
#   if vowels.include?(chars[idx])
#     loop do
#       vowel_chain = []
#
#       vowel_chain << chars[idx]
#       idx += 1
#       break if vowels.include?(chars[idx]) == false
#     end
#       current_chain = vowel_chain.length
#       longest_chain = current_chain if current_chain > longest_chain
#   else
#     idx += 1
# end
# longest_chain
# END
require 'byebug'
def solve(str)
  vowels = %w(a e i o u)

  longest_chain = 0
  current_chain = 0
  idx = 0

  letters = str.chars

  loop do
    vowel_chain = []
    #byebug
    if vowels.include?(letters[idx])
      loop do
        vowel_chain << letters[idx]
        idx += 1
        break if vowels.include?(letters[idx]) == false
      end
      current_chain = vowel_chain.length
      longest_chain = current_chain if current_chain > longest_chain
    else
      idx += 1
    end
    break if idx >= letters.length 
  end

  longest_chain
end

solve('heeello')

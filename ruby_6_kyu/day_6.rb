# Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2. 
# In the alphabet, a and b are also in positions 1 and 2.
# Notice also that d and e in abode occupy the positions they would occupy in the alphabet, which are positions 4 and 5.
# Given an array of words, return an array of the number of letters that occupy their positions in the alphabet for each word.
#
# INPUT
# array of strings
# 
# OUTPUT
# array of integers
#
# RULES
# for each input string return one integer representing the number of characters that have the
# same position in the word as it does in the alphabet
# return array of integers
#
# ALGORITHM
# START
# SET array containing all letters of the alphabet
# SET arr_integers = []
#
# SET count = 0
# strings.each do |word|
#   word.chars.each_with_index do |letter, idx|
#   if letter[idx] == alpha[idx]
#     count +=1
#   end
#   arr_integers << count
#   end

def solve(arr)
  alpha = ('a'..'z').to_a
  arr_integers = []

  arr.each do |word|
    matching_letters = []
    word.downcase.chars.each_with_index do |letter, idx|
      if letter == alpha[idx]
        matching_letters << letter
      end
    end
    arr_integers << matching_letters.size
  end
  arr_integers
end

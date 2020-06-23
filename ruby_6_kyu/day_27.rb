# Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.
#
# ALGORITHM
# split input string into array of words
# initialize new pig array
# if word is puncutation, move to new array without modification
# else split the word into characters
# remove the first letter from the word and add to the end of the word
# add word to new array along with 'ay'
# return new array

ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a
def pig_it(str)
  pig_arr = []

  str_arr = str.split

  until str_arr.empty?
    if str_arr[0].each_char.all? { |char| ALPHABET.include?(char) } == false
      pig_arr << str_arr.shift
    else
      char = str_arr.shift.chars
      char.push(char.shift)
      pig_arr << char.join('') + 'ay'
    end
  end
  pig_arr.join(" ")
end

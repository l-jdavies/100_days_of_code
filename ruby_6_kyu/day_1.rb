# 1. Create a function called encode() to replace all the lowercase vowels in a given string
# with numbers according to the following pattern
# a -> 1
# e -> 2
# i -> 3
# o -> 4
# u -> 5
# There is no need to worry about uppercase vowels in this kata
# 2. Now create a function called decode() to turn the numbers back into vowels according to the same pattern shown above.
#
# INPUT
# string
#
# OUTPUT
# string
#
# RULES
# function encode replaces vowels with numbers
# only replace lowercase vowels - not uppercase
# function decode replaces numbers with vowels
# assume any numbers passed into the method will correspond to vowels
#
# ALGORITHM
# encode():
# split the string into individual characters
# iterate over the characters
# if character is uppercase, do not modify
# if a character is a vowel, replace the vowel with the appropriate number
# rejoin the individual characters into s string
#
# decode()
# essentially same process as above but if character is a number, replace with vowel
#
# START
# SET hash to store vowels/numbers
# SET characters = string.chars
#
# characters.map do |letter|
#   if letter.upcase == letter
#     letter
#   elsif hash.keys.include?(letter.to_sym)
#     letter = hash[letter.to_sym]
#   end
# end
#
# characters.join
# END

def encode(string)
  vowel_keys = {
    a: 1,
    e: 2,
    i: 3,
    o: 4,
    u: 5
  }

  characters = string.chars

  characters.map! do |letter|
    if letter.upcase == letter
      letter
    elsif vowel_keys.keys.include?(letter.to_sym)
      letter = vowel_keys[letter.to_sym]
    else
      letter
    end
  end

  characters.join
end

def decode(string)
  vowel_keys = {
    1 => 'a',
    2 => 'e',
    3 => 'i',
    4 => 'o',
    5 => 'u'
  }

  characters = string.chars

  characters.map! do |letter|
    if %w(1 2 3 4 5).include?(letter)
      letter = vowel_keys[letter.to_i]
    else
      letter
    end
  end
  characters.join
end

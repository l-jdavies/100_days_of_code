# Modify the kebabize function so that it converts a camel case string into a kebab case.
# the returned string should only contain lowercase letters
#
# INPUT
# string
#
# OUTPUT
# string
#
# RULES
# when an uppercase letter is present in the string
# insert a dash between previous letter and uppercase letter
# turn uppercase letter into downcase
# remove any numbers (punctuation?) from input string
#
# ALGORITHM
# initialize a new empty string
# initialize array of alphabet characters, upper and lowercase
# split the input string into an array of characters
# iterate over the array
# if character is uppercase:
#   - add dash to new string
#   - add downcase character to new string
# if character is lowercase
#   - add new string
# if character isn't included in array of alphabet
#   - skip character
#
# START
# SET alphabet_array
# SET kebab_str initialize empty string
# SET character_arr = split input string into array of characters
#
# iterate over character_arr an access each element
# IF element is not included in alphabet_arr
#   nil
# ELSIF element is uppercase
#   add dash to kebab_str
#   transform element to downcase and add to kebab_str
# ELSE
#   add element to kebab_str
# 
# RETURN kebab_str
# END
def kebabize(str)
  kebab_str = ''
  alphabet_arr = ('a'..'z').to_a + ('A'..'Z').to_a

  character_arr = str.chars
  character_arr.each_with_index do |letter, idx|
    if alphabet_arr.include?(letter) == false
      nil
    elsif letter == letter.upcase
      kebab_str << '-' unless idx == 0
      kebab_str << letter.downcase!
    else
      kebab_str << letter
    end
  end

  kebab_str.delete_prefix!('-') if kebab_str[0] == '-'

  kebab_str
end

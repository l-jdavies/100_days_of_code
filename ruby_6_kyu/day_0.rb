# Here are the conditions:
# 1. Your message is a string containing space separated words
# 2. You need to encrypt each word in the message using the following rules:
#   - The first letter needs to be converted to its ASCII code
#   - The second letter needs to be switched with the last letter
# 3. Keepin' it simple: There are no special characters in input.
#
# Examples:
# encrypt_this("Hello") == "72olle"
# encrypt_this("good") == "103doo"
# encrypt_this("hello world") == "104olle 119drlo"

# PEDAC
# INPUTS
# one or multiple string/s - no special characters
#
# OUTPUTS
# return string
# 
# RULES
# convert first letter to ASCII code
# second letter => last letter
# remaining letters unmodified
# reminder - ASCII is case sensitive
# 
# ALGORITHM
# split a string into individual words
# split each word into individual characters
# for each word:
#   determine the ASCII code of the first character
#   replace first character with ASCII code
#   swap the second character with the last character
#   leave remaining characters unmodified
#   join individual characters into word
# return the new string
#
# START
# SET split_words = string.split
# SET encrypt_string = []
# 
# split_words.map do |word|
#   arr_characters = word.chars
#   second, last = arr_characters[-1], arr_characters[1]
#
#   encrypt_string << arr_characters[0].ord
#   encrypt_string << second
#
#   count = 2
#   UNTIL count == arr.size - 1
#   encrypt_string << arr_characters[count]
#   END
#
#   encrypt_string << last
#
#   encrypt_string.join
# END
#
# split_words.join
# END

require 'byebug'
def encrypt_this(string)
  split_words = string.split

  split_words.map! do |word|
    encrypt_string = []
    arr_characters = word.chars

    second, last = arr_characters[-1], arr_characters[1]

    encrypt_string << arr_characters[0].ord
    encrypt_string << second

    count = 2
    until count == arr_characters.size - 1
      encrypt_string << arr_characters[count]
      count += 1
    end

    encrypt_string << last
    encrypt_string.join
  end
  byebug
  split_words.join(' ')
end

encrypt_this("Hello world")

##############################################
# my solution technically works but it timed out and is ugly. Better solution, copied from answer

def encrypt_this(text)
  text.split.map { |word|
    word[1], word[-1] = word[-1], word[1] if word.size > 2
    word[0] = word[0].ord.to_s
    word
  } .join(' ')
end

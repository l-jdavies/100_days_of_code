# return a string where:
# 1) the first and last characters remain in original place for each word
# 2) characters between the first and last characters must be sorted alphabetically
# 3) punctuation should remain at the same place as it started, for example: shan't -> sahn't
#
# Assumptions
# 1) words are seperated by single spaces
# 2) only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
# 3) special characters do not take the position of the non special characters, for example: -dcba -> -dbca
# 4) for this kata puctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
# 5) ignore capitalisation
# 
# INPUT
# string containing letters and 4 possible puncuation characters
#
# OUTPUT
# string
#
# RULES
# keep first and last letters the same
# punctuation must remain in the original position
# if first character is punctuation, that doesn't count as the first letter to keep in place
#
# ALGORITHM
# initialize return array
# initialize an array of punctuation
# split the string into an array of characters
# split so each word is separate array
# iterate over each subarray
# initialize new string
# check if first element is included in punctuation array
# if yes, add element to new string and add element at index[1]
# if no, add element at index[0] to new string
# for each element:
#   - check if it's punctuation
#       -if true, add element to new string
#   - if false
#       - compare `.ord` value of current element to previous element,
#         unless previous element is at index[0] or is a punctuation
#           - if current element is less than previous element, swap elements around
#           - repeat this until current element is equal to or greater than previous element
#     complete process for each element in subarray
# add new string to return array
# join and return the return array
#
# extract logic into methods:
# check if punctuation
# check if element is < or > previous element
require 'byebug'
def scramble_words(str)
  scrambled_arr = []
  
  return str if str.length <= 3

  word_arr = str.split.map! { |word| word.chars }

  word_arr.each do |subarr|
    scrambled_str = start_scramble(subarr)
    
    last_chars = subarr.pop
    last_chars.prepend(subarr.pop) if punctuation?(last_chars)


    #byebug
    if punctuation?(subarr[0])
      scrambled_str << sort_string(subarr[2..-1]).join('')
    else
      scrambled_str << sort_string(subarr[1..-1]).join('')
    end
    scrambled_str << last_chars

    scrambled_arr << scrambled_str
  end
  scrambled_arr.join(' ')
end

def punctuation?(str)
  %w(- ' , .).include?(str)
end

def sort_string(arr)
  idx = 1
  loop do
    inner_idx = 0
    loop do
      if punctuation?(arr[idx])
        break
      elsif punctuation?(arr[inner_idx])
        inner_idx += 1
      elsif (arr[inner_idx] <=> arr[idx]) == -1 || (arr[inner_idx] <=> arr[idx]) == 0
        inner_idx += 1
      else
        arr[idx], arr[inner_idx] = arr[inner_idx], arr[idx]
        inner_idx -= 1
      end

      break if inner_idx == idx
    end

    idx += 1
    break if idx == arr.length
  end
  arr
end

def start_scramble(subarr)
  scrambled_str = ''
  if punctuation?(subarr[0])
    scrambled_str << subarr[0]
    scrambled_str << subarr[1]
  else
    scrambled_str << subarr[0]
  end
  scrambled_str
end

scramble_words('professionals')

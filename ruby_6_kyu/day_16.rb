# Normally we have firstname, middle and the last name but there may be more than one word in a name like a South Indian one.
# Similar to those kinda names we need to initialize the names.
# initials('code wars') => returns C.Wars 
# initials('Barack Hussain obama') => returns B.H.Obama 
#
# INPUT
# string
#
# OUTPUT
# string
#
# RULES
# return a new string with the first letter of first and middle names capitalized
# add space between initials and surname
# surname also capitalized
#
# ALGORITHM
# using index position access each word within the string
# using a second index, access the first letter from each word
# add upcase version of the letter to a new string
# add a '.' to new string
# when first index equals the string length -1 
# capitalize the word and add to new string

def initials(name)
  idx = 0
  new_str = ''

  loop do
    new_str << name.split[idx][0].upcase
    new_str << '.'
    idx += 1
    break if idx == name.split.length - 1
  end
  
  new_str << name.split[-1].capitalize

  new_str
end

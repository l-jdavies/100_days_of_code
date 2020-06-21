# INPUT
# - several integers

# OUTPUT
# - return or print the output?
# - several integers with a between two odd numbers

# RULES
# - if two numbers are odd, place a dash between them

# ALGORITHM
# convert the integer into a string
# use #chars to return an array of digits as strings
# use map!(&:to_i) to convert back into integers
# first_index = 0
# second_index = 1
# return_array = []
# iterate over the array using until loop
# if first_index.odd? && second_index.odd?
#   return_array.push(array[first_index], "-", array[second_index])
# else
#  return_array.push(array[first_index], array[second_index])
# break loop if first_index == array.size
# return_array.join("")



def insert_dash(num)
  array = num.to_s.chars
  array.map!(&:to_i)
  
  first_index = 0
  second_index = 1
  return_array = []
  
  until second_index == array.size
    if array[first_index].odd? && array[second_index].odd?
      return_array.push(array[first_index])
      return_array.push("-")
    else
      return_array.push(array[first_index])
    end
  first_index += 1
  second_index += 1
  end
  return_array.push(array.last)
  return_array.join("")
end

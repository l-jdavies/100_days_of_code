# The input is a comma-separated list with category as the prefix in the form "fruit_banana". Your task is to group each item into the 4 categories Fruit, Meat, Other, Vegetable and output a string with a category on each line followed by a sorted comma-separated list of items.
#
# INPUT
# string
#
# OUTPUT
# string
#
# RULES
#
# ALGORITHM
# initialize empty arrays for all four categories
# split string into array of strings
# iterate over the array and substitute '-' for a whitespace
# iterate over the array and split again so each subarray contains two string elements
# case the first element in each subarray
# add second element to appropriate category array
# use string interpolation to return string

def group_groceries(list)
  fruit = []
  meat = []
  other = []
  vegetable = []

  list_arr = list.split(',')
  list_arr.map! { |sub| sub.gsub('_', ' ') }
  list_arr.map! { |sub| sub.split(" ") }

  list_arr.each do |sub|
    case sub[0]
    when "fruit" then fruit << sub[1]
    when "meat"  then meat << sub[1]
    when "vegetable" then vegetable << sub[1]
    else
                        other << sub[1]
    end
  end
  
  "fruit:#{fruit.sort.join(',')}\nmeat:#{meat.sort.join(',')}\nother:#{other.sort.join(',')}\nvegetable:#{vegetable.sort.join(',')}"
end

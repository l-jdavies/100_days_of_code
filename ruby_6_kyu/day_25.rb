# Given an array of integers , Find the minimum sum which is obtained from summing each Two integers product .
#

def min_sum(arr)
  arr.sort! 
  sum = 0
  
  loop do 
    break if arr.empty?
    sum += (arr.shift * arr.pop)
  end
  
  sum
end

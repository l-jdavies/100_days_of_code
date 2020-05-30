# You are given array of integers, your task will be to count all pairs in that array and return their count.
#
def pairs(arr)
  pairs = []
  no_pair = []
  
  arr.sort!
  until arr.empty?
    if arr[0] == arr[1]
      pairs << arr.shift
      no_pair << arr.shift
    else
      no_pair << arr.shift 
    end
  end
  pairs.length
end

# Complete the solution so that it returns the number of times the search_text is found within the full_text.
#

def solution(full_text, search)
  full_text.scan(search).count
end

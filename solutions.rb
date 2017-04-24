def mirror(a)
  # make the new array for adding elements
  a_mirror = []
  # saves the index of the last element
  num = a.length - 1
  #cycles through the indicies of the original array
  (num).downto(0) do |i|
    # copies the first elements directly
    a_mirror[i] = a[i]
    # copies the mirrored elements into the correct places
    a_mirror[(num*2)-i+1] = a[i]
  end
  #returns the _new_ array
  return a_mirror
end

def switchPairs(a)
  # start at index 0
  i = 0
  # make sure that there is something to compare against
  # this is (i+1) to account for odd length arrays
  while i+1 < a.length
    # swap two sequential indicies
    temp = a[i]
    a[i] = a[i+1]
    a[i+1] = temp
    # increment the index by two, in order to move to next pairing
    i += 2
  end
  # return modified array
  return a
end

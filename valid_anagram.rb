def valid_anagram(s, t)
  arr1 = s.split('').sort
  arr2 = t.split('').sort

  return true if arr1 == arr2
  false
end

# p valid_anagram('cat', 'act')
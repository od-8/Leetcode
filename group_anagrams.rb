def group_anagrams(strs)
  hash = Hash.new { |key, value| key[value] = [] }

  strs.each do |elem|
    str = elem.split('').sort.join('')
    hash[str] << elem
  end

  return hash.values
end

# p group_anagrams(["eat","tea","tan","ate","nat","bat"])
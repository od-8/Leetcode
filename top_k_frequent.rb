def top_k_frequent(nums, k)
  hash = Hash.new(0)

  nums.each { |elem| hash[elem] += 1}

  arr = hash.to_a

  arr.sort_by! { |pair| -pair[1]}

  return arr.first(k).map { |pair| pair[0]}
end

# p top_k_frequent([1,1,1,2,2,3], 2)
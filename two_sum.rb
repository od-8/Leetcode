def two_sum(nums, target)
  hash = Hash.new

  nums.each_with_index { |elem, index| hash[elem] = index }

  nums.each_with_index do |elem, index|
    diff = target - elem

    if hash.key?(diff) && hash[diff] != index
      return [index, hash[diff]]
    end
  end
end

# p two_sum([3,3], 6)
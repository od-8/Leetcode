def contains_duplicate(nums)
  return false if nums == nums.uniq
  return true if nums.any? { |elem| nums.count(elem) > 1}
end

# p contains_duplicate([2,3,4,5,6,7,8,9,2])
def find_median_sorted_array(nums1, nums2)
  nums = (nums1 + nums2).sort
  index = nums.length / 2
  if nums.length.even?
    median = (nums[index] + nums[index - 1].to_f / 2)
  else
    median = nums[index]
  end
  return median
end

p#  find_median_sorted_array([1,2], [2])
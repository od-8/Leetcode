def longest_consecutive(nums)
	set = Set.new(nums)
	longest = 0

	set.each do |num|
		unless set.include?(num - 1)
			length = 1

			while set.include?(num + length)
				length += 1
			end

			longest = [longest, length].max
		end
	end

	return longest
end

# p longest_consecutive([100,4,200,1,3,2])
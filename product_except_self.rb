def product_except_self(nums)
  prefix = []
  postfix = []
  output = []

  nums.each_with_index do |elem, index|
    if prefix.empty? 
      prefix << elem
    else
      prefix << prefix.last * elem
    end

    if postfix.empty?
      postfix << nums.last
    else
      postfix << postfix.last * nums[-(index + 1)]
    end
  end

  postfix.reverse!

  nums.each_with_index do |elem, index|
    if index - 1 < 0
      output << 1 * postfix[index + 1]
      next
    end

    if postfix[index + 1] == nil
      output << prefix[index - 1] * 1
      next
    end
    output << prefix[index - 1] * postfix[index + 1]
  end

  return output
end

# p product_except_self([-1,1,0,-3,3])
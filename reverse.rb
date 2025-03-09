def reverse(x)
  if x < 0
    x = x.to_s.reverse.to_i * -1
  else
    x = x.to_s.reverse.to_i
  end

  if x.between?(-2 ** (31), (2 ** 31) - 1)
    return x
  else
    return 0
  end
end

# p reverse(123)
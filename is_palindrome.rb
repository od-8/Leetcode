def is_palindrome(x)
  if x == x.to_s.reverse.to_i
    true
  else
    false
  end
end

# p is_palindrome(121)
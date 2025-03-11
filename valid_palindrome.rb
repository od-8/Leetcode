def is_palindrome(s)
	arr = s.downcase.split('')
	arr.keep_if { |elem| elem.ord.between?(97, 122) || elem.ord.between?(48, 57)}

	return true if arr == arr.reverse
	return false
end

# p is_palindrome('A man, a plan, a canal: Panama') 